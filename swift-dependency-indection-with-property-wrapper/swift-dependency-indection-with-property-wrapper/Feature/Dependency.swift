//
//  Dependency.swift
//  swift-dependency-indection-with-property-wrapper
//
//  Created by Paolo Prodossimo Lopes on 08/05/22.
//

import Foundation

@propertyWrapper
struct Dependency<T> {
    var wrappedValue: T
    init() { wrappedValue = DependencyInjector.resolve() }
}

final class DependencyInjector {
    
    //MARK: - Singleton
    private static var shared: DependencyInjector = .init()
    
    //MARK: - Properties
    private var dependencies = [String: AnyObject]()
    
    //MARK: - Constructor
    private init() { }
    
    //MARK: - Methods
    static func register<T>(_ dependecy: T) {
        shared.register(dependecy)
    }
    
    static fileprivate func resolve<T>() -> T {
        shared.resolve()
    }
    
    //MARK: - Helpers
    private func register<T>(_ dependency: T) {
        let key = String(describing: T.self)
        dependencies[key] = dependency as AnyObject
    }
    
    private func resolve<T>() -> T {
        let key = String(describing: T.self)
        let dependency = dependencies[key] as? T
        
        precondition(dependency != nil, "No dependency found for \(key)! must register a dependency before resolve.")
        
        return dependency!
    }
}

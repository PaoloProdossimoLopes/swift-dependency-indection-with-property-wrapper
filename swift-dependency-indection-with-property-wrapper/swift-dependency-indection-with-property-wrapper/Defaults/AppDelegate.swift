//
//  AppDelegate.swift
//  swift-dependency-indection-with-property-wrapper
//
//  Created by Paolo Prodossimo Lopes on 08/05/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //MARK: - Setup Dependencies
        DependencyInjector.register(ExampleService() as ExampleServiceProtocol)
        
        return true
    }
}


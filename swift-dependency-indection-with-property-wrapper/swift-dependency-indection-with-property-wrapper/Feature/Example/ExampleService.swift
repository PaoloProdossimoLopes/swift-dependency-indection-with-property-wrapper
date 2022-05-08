//
//  ExampleService.swift
//  swift-dependency-indection-with-property-wrapper
//
//  Created by Paolo Prodossimo Lopes on 08/05/22.
//

protocol ExampleServiceProtocol {
    func fetchThirdPart(_ completion: (String) -> ())
}

final class ExampleService: ExampleServiceProtocol {
    
    func fetchThirdPart(_ completion: (String) -> ()) {
        completion("Success...")
    }
}

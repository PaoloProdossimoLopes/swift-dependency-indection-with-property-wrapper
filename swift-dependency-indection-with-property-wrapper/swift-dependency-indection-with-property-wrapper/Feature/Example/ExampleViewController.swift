//
//  ExampleViewController.swift
//  swift-dependency-indection-with-property-wrapper
//
//  Created by Paolo Prodossimo Lopes on 08/05/22.
//

import UIKit

final class ExampleViewController: UIViewController {
    
    //MARK: - Dependencies
    @Dependency private var service: ExampleServiceProtocol
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
        testDependencyInjector()
    }
    
    //MARK: - Helpers
    private func testDependencyInjector() {
        service.fetchThirdPart { message in
            print("✅ DEBUG: Message recieved -> \(message)")
        }
    }
    
    private func prepareUI() {
        view.backgroundColor = .white
    }
}

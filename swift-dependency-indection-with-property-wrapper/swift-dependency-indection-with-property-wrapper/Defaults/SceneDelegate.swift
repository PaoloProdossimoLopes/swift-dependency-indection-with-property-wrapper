//
//  SceneDelegate.swift
//  swift-dependency-indection-with-property-wrapper
//
//  Created by Paolo Prodossimo Lopes on 08/05/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = .init(windowScene: windowScene)
        window?.rootViewController = ExampleViewController()
        window?.makeKeyAndVisible()
    }
}


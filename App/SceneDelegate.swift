//
//  SceneDelegate.swift
//  TodoJourneyApp
//
//  Created by Giovanni Vicentin Moratto on 01/10/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = scene as? UIWindowScene else { return }
        let window = UIWindow(windowScene: windowScene)
        let root = UINavigationController(rootViewController: TaskListViewController())
        window.rootViewController = root
        window.makeKeyAndVisible()
        self.window = window
    }
}
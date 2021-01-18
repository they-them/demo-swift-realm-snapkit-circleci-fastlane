// Created by Luna Graysen on 2021-01-18.

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    // MARK: Properties
    var window: UIWindow?

    // MARK: UIWindowSceneDelegate Lifecycle
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else {
            return
        }
        
        let window = UIWindow(windowScene: windowScene)
        AppConfig.shared.setup(window)
        self.window = window
        window.makeKeyAndVisible()
    }
}

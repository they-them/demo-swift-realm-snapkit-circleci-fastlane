// Created by Luna Graysen on 2021-01-18.

import UIKit

final class AppConfig {
    
    // MARK: Properties
    let services: ServiceBuilderInterface
    let modules: ModuleBuilderInterface
    private(set) var window: UIWindow?
    
    static let shared = AppConfig()
    
    // MARK: Initializer
    private init() {
        self.services = ServiceBuilder()
        self.modules = ModuleBuilder()
    }
    
    func setup(_ window: UIWindow) {
        self.window = window
        
        let navigationController: UINavigationController
        navigationController = UINavigationController(rootViewController:  self.modules.main())
        navigationController.navigationBar.shadowImage = UIImage()
        self.window?.rootViewController = navigationController
    }
}

// Created by Luna Graysen on 2021-01-18.

import UIKit

final class MainRouter: RouterInterface {
    weak var presenter: MainPresenterRouterInterface!
    weak var viewController: UIViewController?
}

extension MainRouter: MainRouterPresenterInterface {
    func handleAddBarButtonItemPressed() {
        // Initialize the add module.
        let addModule = AppConfig.shared.modules.add(presenterDelegate: presenter as!
                                                        AddPresenterDelegate)
        // Present the module as modal view controller.
        viewController?.present(addModule, animated: true, completion: nil)
    }
}

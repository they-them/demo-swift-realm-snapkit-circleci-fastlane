// Created by Luna Graysen on 2021-01-18.

import UIKit

final class AddRouter: RouterInterface {
    weak var presenter: AddPresenterRouterInterface!
    weak var viewController: UIViewController?
}

extension AddRouter: AddRouterPresenterInterface {
    func dismiss() {
        viewController?.dismiss(animated: true, completion: {
            self.presenter.delegate?.handleDismiss()
        })
        
    }
}

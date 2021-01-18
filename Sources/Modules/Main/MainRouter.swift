// Created by Luna Graysen on 2021-01-18.

import UIKit

final class MainRouter: RouterInterface {
    weak var presenter: MainPresenterRouterInterface!
    weak var viewController: UIViewController?
}

extension MainRouter: MainRouterPresenterInterface {

}

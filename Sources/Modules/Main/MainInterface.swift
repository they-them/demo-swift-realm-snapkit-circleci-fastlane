// Created by Luna Graysen on 2021-01-18.

import UIKit

// MARK: Router
protocol MainRouterPresenterInterface: RouterPresenterInterface {

}

// MARK: Presenter
protocol MainPresenterRouterInterface: PresenterRouterInterface {

}

protocol MainPresenterInteractorInterface: PresenterInteractorInterface {

}

protocol MainPresenterViewInterface: PresenterViewInterface {
    func start()
}

// MARK: Interactor
protocol MainInteractorPresenterInterface: InteractorPresenterInterface {

}

// MARK: View
protocol MainViewPresenterInterface: ViewPresenterInterface {

}

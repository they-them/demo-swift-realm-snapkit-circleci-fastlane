// Created by Luna Graysen on 2021-01-18.

import UIKit

// MARK: Router
protocol AddRouterPresenterInterface: RouterPresenterInterface {

}

// MARK: Presenter
protocol AddPresenterRouterInterface: PresenterRouterInterface {

}

protocol AddPresenterInteractorInterface: PresenterInteractorInterface {

}

protocol AddPresenterViewInterface: PresenterViewInterface {
    func start()
}

// MARK: Interactor
protocol AddInteractorPresenterInterface: InteractorPresenterInterface {

}

// MARK: View
protocol AddViewPresenterInterface: ViewPresenterInterface {

}

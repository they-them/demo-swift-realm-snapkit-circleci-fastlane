// Created by Luna Graysen on 2021-01-18.

import UIKit

// MARK: Delegate
protocol AddPresenterDelegate {
    func handleDismiss()
}

// MARK: Router
protocol AddRouterPresenterInterface: RouterPresenterInterface {
    func dismiss()
}

// MARK: Presenter
protocol AddPresenterRouterInterface: PresenterRouterInterface {
    var delegate: AddPresenterDelegate? { get set }
}

protocol AddPresenterInteractorInterface: PresenterInteractorInterface {

}

protocol AddPresenterViewInterface: PresenterViewInterface {
    func start()
    func handleGreatButtonPressed()
    func handleGoodButtonPressed()
    func handleAlrightButtonPressed()
    func handleBadButtonPressed()
    func handleHorribleButtonPressed()
}

// MARK: Interactor
protocol AddInteractorPresenterInterface: InteractorPresenterInterface {
    func handleGreatButtonPressed()
    func handleGoodButtonPressed()
    func handleAlrightButtonPressed()
    func handleBadButtonPressed()
    func handleHorribleButtonPressed()
}

// MARK: View
protocol AddViewPresenterInterface: ViewPresenterInterface {

}

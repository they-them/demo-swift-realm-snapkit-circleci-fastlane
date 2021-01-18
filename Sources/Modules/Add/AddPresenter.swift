// Created by Luna Graysen on 2021-01-18.

import Foundation

final class AddPresenter: PresenterInterface, AddPresenterRouterInterface {
    var router: AddRouterPresenterInterface!
    var interactor: AddInteractorPresenterInterface!
    weak var view: AddViewPresenterInterface!
    var delegate: AddPresenterDelegate?
}

extension AddPresenter: AddPresenterInteractorInterface {

}

extension AddPresenter: AddPresenterViewInterface {
    func handleGreatButtonPressed() {
        interactor.handleGreatButtonPressed()
        router.dismiss()
    }
    
    func handleGoodButtonPressed() {
        interactor.handleGoodButtonPressed()
        router.dismiss()
    }
    
    func handleAlrightButtonPressed() {
        interactor.handleAlrightButtonPressed()
        router.dismiss()
    }
    
    func handleBadButtonPressed() {
        interactor.handleBadButtonPressed()
        router.dismiss()
    }
    
    func handleHorribleButtonPressed() {
        interactor.handleHorribleButtonPressed()
        router.dismiss()
    }
    
    func start() {

    }
}

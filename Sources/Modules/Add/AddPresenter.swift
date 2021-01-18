// Created by Luna Graysen on 2021-01-18.

import Foundation

final class AddPresenter: PresenterInterface {
    var router: AddRouterPresenterInterface!
    var interactor: AddInteractorPresenterInterface!
    weak var view: AddViewPresenterInterface!
}

extension AddPresenter: AddPresenterRouterInterface {

}

extension AddPresenter: AddPresenterInteractorInterface {

}

extension AddPresenter: AddPresenterViewInterface {
    func start() {

    }
}

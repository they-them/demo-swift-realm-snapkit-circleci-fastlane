// Created by Luna Graysen on 2021-01-18.

import Foundation

final class MainPresenter: PresenterInterface {
    var router: MainRouterPresenterInterface!
    var interactor: MainInteractorPresenterInterface!
    weak var view: MainViewPresenterInterface!
}

extension MainPresenter: MainPresenterRouterInterface {

}

extension MainPresenter: MainPresenterInteractorInterface {

}

extension MainPresenter: MainPresenterViewInterface {
    func start() {

    }
}

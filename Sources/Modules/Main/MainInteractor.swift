// Created by Luna Graysen on 2021-01-18.

import Foundation

final class MainInteractor: InteractorInterface {
    weak var presenter: MainPresenterInteractorInterface!
}

extension MainInteractor: MainInteractorPresenterInterface {

}

// Created by Luna Graysen on 2021-01-18.

import Foundation

final class AddInteractor: InteractorInterface {
    weak var presenter: AddPresenterInteractorInterface!
}

extension AddInteractor: AddInteractorPresenterInterface {

}

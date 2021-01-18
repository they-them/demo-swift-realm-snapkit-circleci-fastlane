// Created by Luna Graysen on 2021-01-18.

import UIKit

// MARK: Module Builder
final class AddModule: ModuleInterface {

    typealias View = AddView
    typealias Presenter = AddPresenter
    typealias Router = AddRouter
    typealias Interactor = AddInteractor

    func build(presenterDelegate: AddPresenterDelegate) -> UIViewController {
        let view = View()
        let interactor = Interactor()
        let presenter = Presenter()
        let router = Router()

        self.assemble(view: view, presenter: presenter, router: router, interactor: interactor)
        presenter.delegate = presenterDelegate
        router.viewController = view

        return view
    }
}

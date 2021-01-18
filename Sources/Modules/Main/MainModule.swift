// Created by Luna Graysen on 2021-01-18.

import UIKit

// MARK: Module Builder
final class MainModule: ModuleInterface {

    typealias View = MainView
    typealias Presenter = MainPresenter
    typealias Router = MainRouter
    typealias Interactor = MainInteractor

    func build() -> UIViewController {
        let view = View()
        let interactor = Interactor()
        let presenter = Presenter()
        let router = Router()

        self.assemble(view: view, presenter: presenter, router: router, interactor: interactor)

        router.viewController = view

        return view
    }
}

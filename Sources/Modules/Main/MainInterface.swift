// Created by Luna Graysen on 2021-01-18.

import UIKit

// MARK: Router
protocol MainRouterPresenterInterface: RouterPresenterInterface {
    func handleAddBarButtonItemPressed()
}

// MARK: Presenter
protocol MainPresenterRouterInterface: PresenterRouterInterface {

}

protocol MainPresenterInteractorInterface: PresenterInteractorInterface {
    func hasUpdatedData(moods: [Mood])
}

protocol MainPresenterViewInterface: PresenterViewInterface {
    func deleteMood(at indexPath: IndexPath)
    func handleAddBarButtonItemPressed()
    func numberOfRows() -> Int
    func mood(for indexPath: IndexPath) -> Mood
    func refresh()
}

// MARK: Interactor
protocol MainInteractorPresenterInterface: InteractorPresenterInterface {
    func delete(mood: Mood)
    func fetch()
}

// MARK: View
protocol MainViewPresenterInterface: ViewPresenterInterface {
    func reloadData()
}

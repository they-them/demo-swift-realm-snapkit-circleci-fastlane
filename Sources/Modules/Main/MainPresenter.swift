// Created by Luna Graysen on 2021-01-18.

import Foundation

final class MainPresenter: PresenterInterface {
    var router: MainRouterPresenterInterface!
    var interactor: MainInteractorPresenterInterface!
    weak var view: MainViewPresenterInterface!
    var dataSource: [Mood] = []
}

extension MainPresenter: MainPresenterRouterInterface {

}

extension MainPresenter: AddPresenterDelegate {
    func handleDismiss() {
        self.view.reloadData()
    }
}

extension MainPresenter: MainPresenterInteractorInterface {
    func hasUpdatedData(moods: [Mood]) {
        dataSource = moods
    }
}

extension MainPresenter: MainPresenterViewInterface {
    func deleteMood(at indexPath: IndexPath) {
        interactor.delete(mood: dataSource[indexPath.row])
    }
    
    func numberOfRows() -> Int {
        return dataSource.count
    }
    
    func mood(for indexPath: IndexPath) -> Mood {
        return dataSource[indexPath.row]
    }
    
    func handleAddBarButtonItemPressed() {
        router.handleAddBarButtonItemPressed()
    }
    
    func refresh() {
        interactor.fetch()
    }
}

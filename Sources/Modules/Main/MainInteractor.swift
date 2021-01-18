// Created by Luna Graysen on 2021-01-18.

import Foundation

final class MainInteractor: ServiceInteractor, InteractorInterface {
    weak var presenter: MainPresenterInteractorInterface!
}

extension MainInteractor: MainInteractorPresenterInterface {
    func delete(mood: Mood) {
        services.realm.remove(mood: mood)
    }
    
    func fetch() {
        let moods = services.realm.fetch()
        presenter.hasUpdatedData(moods: moods)
    }
}

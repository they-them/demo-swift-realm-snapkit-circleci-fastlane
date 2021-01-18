// Created by Luna Graysen on 2021-01-18.

import Foundation

final class AddInteractor: ServiceInteractor, InteractorInterface {
    weak var presenter: AddPresenterInteractorInterface!
}

extension AddInteractor: AddInteractorPresenterInterface {
    func handleGreatButtonPressed() {
        let mood = Mood()
        mood.type = .great
    
        services.realm.add(mood: mood)
    }
    
    func handleGoodButtonPressed() {
        let mood = Mood()
        mood.type = .good
    
        services.realm.add(mood: mood)
    }
    
    func handleAlrightButtonPressed() {
        let mood = Mood()
        mood.type = .alright
    
        services.realm.add(mood: mood)
    }
    
    func handleBadButtonPressed() {
        let mood = Mood()
        mood.type = .bad
    
        services.realm.add(mood: mood)
    }
    
    func handleHorribleButtonPressed() {
        let mood = Mood()
        mood.type = .horrible
    
        services.realm.add(mood: mood)
    }
}

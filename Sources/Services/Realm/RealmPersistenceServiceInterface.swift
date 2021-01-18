// Created by Luna Graysen on 2021-01-18.

import Foundation
import RealmSwift

protocol RealmPersistenceServiceInterface: ServiceInterface {
    func add(mood: Mood)
    func remove(mood: Mood)
    func fetch() -> [Mood]
}

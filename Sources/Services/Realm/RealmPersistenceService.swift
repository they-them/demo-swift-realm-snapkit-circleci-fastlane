// Created by Luna Graysen on 2021-01-18.

import Foundation
import RealmSwift

final class RealmPersistenceService: RealmPersistenceServiceInterface {
    func remove(mood: Mood) {
        do {
            let realm = try Realm()
            try realm.write {
                realm.delete(mood)
            }
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func add(mood: Mood) {
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(mood)
            }
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func fetch() -> [Mood] {
        do {
            let realm = try Realm()
            let moods = realm.objects(Mood.self).sorted(byKeyPath: "createdAt", ascending: false)
            let moodsArray: [Mood] = moods.map { $0 }
            
            return moodsArray
        } catch let error {
            print(error.localizedDescription)
            
            return []
        }
    }
}

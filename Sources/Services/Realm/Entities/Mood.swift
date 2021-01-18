// Created by Luna Graysen on 2021-01-18.

import Foundation
import RealmSwift

enum MoodType: String {
    case great
    case good
    case alright
    case bad
    case horrible
}

final class Mood: Object {
    // MARK: Properties
    // Unique identifier for each mood entry.
    @objc dynamic var id: String = UUID().uuidString
    // Date of when the entry was created.
    @objc dynamic var createdAt: Date = Date()
    // Mood type such as great, good, alright, etc for each entry.
    @objc dynamic private var _type: String = ""
    var type: MoodType {
        get {
            return MoodType(rawValue: _type)!
        }
        
        set {
            _type = newValue.rawValue
        }
    }
}

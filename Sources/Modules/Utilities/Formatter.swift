// Created by Luna Graysen on 2021-01-18.

import Foundation

struct Formatter {
    static func string(from date: Date) -> String {
        // Initialize date formatter.
        let formatter = DateFormatter()
        // Set preferred date format.
        formatter.dateFormat = "EEE, MMM d, yyyy h:mm a"
        // Get string from Date.
        return formatter.string(from: date)
    }
}

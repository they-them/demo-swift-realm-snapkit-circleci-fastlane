// Created by Luna Graysen on 2021-01-18.

import UIKit

class MoodButton: UIButton {
    required init(mood: String, backgroundColor: UIColor) {
        super.init(frame: .zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        // Set text colour to white.
        self.setTitleColor(.white, for: .normal)
        // Set title to capitalized rawValue of provided mood.
        self.setTitle(mood.capitalized, for: .normal)
        // Set font to bold body preferred font.
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: UIFont.preferredFont(forTextStyle: .body).pointSize)
        // Set background colour.
        self.backgroundColor = backgroundColor
        // Set corner radius to make rounded rectangle.
        layer.cornerRadius = 25.0
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

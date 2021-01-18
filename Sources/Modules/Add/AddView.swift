// Created by Luna Graysen on 2021-01-18.

import UIKit
import SnapKit

final class AddView: UIViewController, ViewInterface {
    // MARK: Properties
    var presenter: AddPresenterViewInterface!
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.presenter.start()
        configureUI()
    }
    
    func configureUI() {
        // Set the background color to systemBackground.
        view.backgroundColor = .systemBackground
        
        // Create buttons and assign targets to their own function.
        let greatButton = MoodButton(mood: MoodType.great.rawValue, backgroundColor: .checkInEvergreen)
        greatButton.addTarget(self, action: #selector(handleGreatButtonPressed(sender:)), for: .touchUpInside)
        let goodButton = MoodButton(mood: MoodType.good.rawValue, backgroundColor: .checkInGreen)
        goodButton.addTarget(self, action: #selector(handleGoodButtonPressed(sender:)), for: .touchUpInside)
        let alrightButton = MoodButton(mood: MoodType.alright.rawValue, backgroundColor: .checkInYellow)
        alrightButton.addTarget(self, action: #selector(handleAlrightButtonPressed(sender:)), for: .touchUpInside)
        let badButton = MoodButton(mood: MoodType.bad.rawValue, backgroundColor: .checkInOrange)
        badButton.addTarget(self, action: #selector(handleBadButtonPressed(sender:)), for: .touchUpInside)
        let horribleButton = MoodButton(mood: MoodType.horrible.rawValue, backgroundColor: .checkInRed)
        horribleButton.addTarget(self, action: #selector(handleHorribleButtonPressed(sender:)), for: .touchUpInside)
        
        // Create stack view.
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.spacing = 30
        stackView.distribution = .equalSpacing
        
        // Add buttons to stack view.
        stackView.addArrangedSubview(greatButton)
        stackView.addArrangedSubview(goodButton)
        stackView.addArrangedSubview(alrightButton)
        stackView.addArrangedSubview(badButton)
        stackView.addArrangedSubview(horribleButton)
        
        // Add stack view to parent view.
        view.addSubview(stackView)
        
        stackView.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.centerY.equalTo(view.snp.centerY)
        }
        
        greatButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
        
        goodButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
        
        alrightButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
        
        badButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
        
        horribleButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
    }
    
    // MARK: Actions
    @objc private func handleGreatButtonPressed(sender: MoodButton) {
        presenter.handleGreatButtonPressed()
    }
    
    @objc private func handleGoodButtonPressed(sender: MoodButton) {
        presenter.handleGoodButtonPressed()
    }
    
    @objc private func handleAlrightButtonPressed(sender: MoodButton) {
        presenter.handleAlrightButtonPressed()
    }
    
    @objc private func handleBadButtonPressed(sender: MoodButton) {
        presenter.handleBadButtonPressed()
    }
    
    @objc private func handleHorribleButtonPressed(sender: MoodButton) {
        presenter.handleHorribleButtonPressed()
    }
}

extension AddView: AddViewPresenterInterface {
    
}

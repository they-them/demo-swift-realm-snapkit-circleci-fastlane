// Created by Luna Graysen on 2021-01-18.

import UIKit

final class MainView: UIViewController, ViewInterface {
    // MARK: Properties
    var presenter: MainPresenterViewInterface!

    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        
        self.presenter.start()
    }
}

extension MainView: MainViewPresenterInterface {

}

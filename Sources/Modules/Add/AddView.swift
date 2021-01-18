// Created by Luna Graysen on 2021-01-18.

import UIKit

final class AddView: UIViewController, ViewInterface {
    // MARK: Properties
    var presenter: AddPresenterViewInterface!

    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        
        self.presenter.start()
    }
}

extension AddView: AddViewPresenterInterface {

}

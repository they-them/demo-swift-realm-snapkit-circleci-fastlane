// Created by Luna Graysen on 2021-01-18.

import UIKit

final class ModuleBuilder: ModuleBuilderInterface {
    func main() -> UIViewController {
        return MainModule().build()
    }
    func add() -> UIViewController {
        return AddModule().build()
    }
}

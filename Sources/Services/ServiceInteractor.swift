// Created by Luna Graysen on 2021-01-18.

import Foundation

class ServiceInteractor {

    let services: ServiceBuilderInterface

    init(services: ServiceBuilderInterface = AppConfig.shared.services) {
        self.services = services
    }
}

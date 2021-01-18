# demo-swift-realm-snapkit-circleci-fastlane

This is a demo project for how to use Swift 5.x, Realm, SnapKit, Viper architecture, CircleCI and Fastlane together. To integrate dependencies, I used SwiftPM because I was having compatibility issues with Carthage because of my M1 Mac.

The app is a simple mood tracker with two pages: one page that lists the reported moods and one page to add new mood reports. The moods are stored in Realm and the Add page is built using SnapKit. I didn't have the chance to write real tests but the project is configured to use Fastlane and CircleCI with the empty test cases Xcode makes when the target is created. Builds are passing.

Some relevant links to implementation:

* CircleCI config: https://github.com/they-them/demo-swift-realm-snapkit-circleci-fastlane/blob/main/.circleci/config.yml
* Fastfile config: https://github.com/they-them/demo-swift-realm-snapkit-circleci-fastlane/blob/main/fastlane/Fastfile
* Realm model: https://github.com/they-them/demo-swift-realm-snapkit-circleci-fastlane/blob/main/Sources/Services/Realm/Entities/Mood.swift
* Realm persistence service: https://github.com/they-them/demo-swift-realm-snapkit-circleci-fastlane/blob/main/Sources/Services/Realm/RealmPersistenceService.swift
* Add SnapKit implementation: https://github.com/they-them/demo-swift-realm-snapkit-circleci-fastlane/blob/main/Sources/Modules/Add/AddView.swift

<img width="1440" alt="Screen Shot 2021-01-18 at 12 27 25 PM" src="https://user-images.githubusercontent.com/75589876/104947067-228d2880-5989-11eb-8932-748a62da231b.png">

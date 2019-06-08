//
//  SceneDelegate.swift
//  Germinal
//
//  Created by Mac Beta on 6/7/19.
//  Copyright © 2019 Lukas Würzburger. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    // MARK: - UI Elements

    var window: UIWindow?

    // MARK: - Window Scene Delegate

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UIHostingController(rootView: PeopleView(people: testData()))
        self.window = window
        window.makeKeyAndVisible()
    }

    func testData() -> [Person] {
        return [
            Person(id: 1, email: "yes@me.com", displayName: "Max", lastCheckIn: Date()),
            Person(id: 2, email: "no@apple.com", displayName: "Muster", lastCheckIn: Date()),
            Person(id: 3, email: "swiftui@no.com", displayName: "Mann", lastCheckIn: Date(timeIntervalSince1970: 1550000000))
        ]
    }
}


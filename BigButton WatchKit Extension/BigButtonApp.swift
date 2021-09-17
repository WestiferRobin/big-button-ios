//
//  BigButtonApp.swift
//  BigButton WatchKit Extension
//
//  Created by Wesley Webb on 9/17/21.
//

import SwiftUI

@main
struct BigButtonApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}

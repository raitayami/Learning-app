//
//  Learning_appApp.swift
//  Learning-app
//
//  Created by Tayami Rai on 10/10/2023.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}

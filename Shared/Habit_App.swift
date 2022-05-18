//
//  Habit_App.swift
//  Shared
//
//  Created by Antonio Vuono on 17/05/22.
//

import SwiftUI

@main
struct Habit_App: App {
    var body: some Scene {
        WindowGroup {
           SplashView(viewModel: SplashViewModel())
        }
    }
}

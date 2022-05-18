//
//  SplashViewRouter.swift
//  Habit+ (iOS)
//
//  Created by Antonio Vuono on 18/05/22.
//

import SwiftUI


enum SplashViewRouter {
    static func makeSignInView() -> some View {
        let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
    }
}

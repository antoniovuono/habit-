//
//  SplashViewModel.swift
//  Habit+ (iOS)
//
//  Created by Antonio Vuono on 18/05/22.
//

import SwiftUI

class SplashViewModel: ObservableObject {
    
    @Published var uiState: SplashUIState = .loading
    
    func onApear() {
        //Faz algo assíncrono e muda o estado da uiState...
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            // aqui é chamado depois de dois segundos...
            self.uiState = .goToSignInScreen
        }
    }
    
}

extension SplashView {
    func signInView() -> some View {
        return SplashViewRouter.makeSignInView()
    }
}

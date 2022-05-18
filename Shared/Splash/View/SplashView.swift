//
//  SplashView.swift
//  Habit+ (iOS)
//
//  Created by Antonio Vuono on 17/05/22.
//

import SwiftUI

struct SplashView: View {

    @ObservedObject var viewModel: SplashViewModel
    
    var body: some View {
        Group {
            switch viewModel.uiState {
            case .loading:
                 loadingView()
            case .goToSignInScreen:
                //Navegar para próxima tela
                viewModel.signInView()
            case .goToHomeScreen:
                 Text("Carregar a homepage")
            case .error(let msg):
                loadingView(error: msg)
            }
        }.onAppear(perform: viewModel.onApear)
    }
}

extension SplashView {
    func loadingView(error: String? = nil) -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
            
            
            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(title: Text("Habit+"), message: Text(error), dismissButton: .default(Text("Ok")) {
                            // faz algo quando some o alerta!
                        })
                    }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = SplashViewModel()
        SplashView(viewModel: viewModel)
    }
}

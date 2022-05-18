//
//  SignInView.swift
//  Habit+ (iOS)
//
//  Created by Antonio Vuono on 18/05/22.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel
    
    var body: some View {
        Text("Tela de Sign in")
            .background(Color.blue)
    }
}

//
//  RootContentView.swift
//  SwiftUI_Baemin
//
//  Created by Hyunseo Han on 12/12/25.
//


import SwiftUI

struct RootContentView: View {
    enum AppState {
        case login
        case loginCompletion
        case main
    }
    
    @State private var appState: AppState = .login
    @State private var userEmail: String = ""
    
    var body: some View {
        ZStack {
            switch appState {
            case .login:
                LoginView(appState: $appState, email: $userEmail)
            case .loginCompletion:
                WelcomeView(appState: $appState, userEmail: userEmail)
            case .main:
                MainTabView()
            }
        }
    }
}

#Preview {
    RootContentView()
}

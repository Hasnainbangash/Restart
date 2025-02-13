//
//  HomeView.swift
//  Restart
//
//  Created by Elexoft on 13/02/2025.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 20) {
            // MARK: - HEADER
            
            Spacer()
            
            Image("character-2")
                .resizable()
                .scaledToFit()
                .padding()
            
            // MARK: - CENTER
            
            // MARK: - FOOTER
            
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Text("Restart")
            }
        } //: VSTACK
    }
}

#Preview {
    HomeView()
}

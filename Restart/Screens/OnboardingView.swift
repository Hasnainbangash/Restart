//
//  OnboardingView.swift
//  Restart
//
//  Created by Elexoft on 13/02/2025.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                // Some action
            }) {
                Text("Start")
            }
        } //: VSTACK
    }
}

#Preview {
    OnboardingView()
}

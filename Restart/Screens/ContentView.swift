//
//  ContentView.swift
//  Restart
//
//  Created by Elexoft on 13/02/2025.
//

import SwiftUI

struct ContentView: View {
    // This property will set up a new onboarding key in app storage. This ap storage is a special SwiftUI property wrapper that will use the user's defaults. under the hood. It's purpose is to store some value on the device's permanent storage by utilizing a get and set method. This is a unique key identifier that we can refer to later on by using this key. We can edit or recall its saved value on the device storage.
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}

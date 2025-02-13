//
//  OnboardingView.swift
//  Restart
//
//  Created by Elexoft on 13/02/2025.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    
    // This code is identical to previous one, it seems that we are setting a new value for this property again, but in reality this special app storage property wrapper works differently. This true value will only be added to this property when the ptogram doesnot find the onboarding key in the user default storage. In summary if our program finds the onboarding key in the user default storage, then it will skip this initialization and since we have initiliazed this onboarding key in the previous file(ContentView) therefore the end part of this code will be ignored. So this is how we access the previously stored value of the onboarding key.
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20) {
                // MARK: - HEADER
                
                Spacer()
                
                VStack(spacing: 0) {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                    It's not how much we give but
                    how muc love we put into giving.
                    """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                } //: HEADER
                
                // MARK: - CENTER
                
                ZStack {
                    ZStack {
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 260, height: 260, alignment: .center)
                    } //: ZSTACK
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                } //: CENTER
                
                Spacer()
                
                // MARK: - FOOTER
                
                ZStack {
                    // PARTS OF THE CUSTOM BUTTON
                    
                    // 1. BACKGROUND (STATIC)
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    
                    // 2. CALL-TO-ACTION (STATIC)
                    // 3. CAPSULE (DYNAMIC WIDTH)
                    
                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        
                        Spacer()
                    }
                    
                    // 4. CIRCLE (DRAGGABLE)
                    
                } //: FOOTER
                .frame(height: 80, alignment: .center)
                .padding()
            } //: VSTACK
        } //: ZSTACK
    }
}

#Preview {
    OnboardingView()
}

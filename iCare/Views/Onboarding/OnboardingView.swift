//
//  OnboardingView.swift
//  iCare
//
//  Created by Jessica Perez on 11/26/21.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: -Properties
////creates onboarding propertie

    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    
    //MARK: -Body
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            VStack(spacing: 20) {
                //MARK: -Header
                Spacer()
                VStack(spacing: 20) {
                    Text("""
                        
                        iCare
                        Maternal & Prenatal Health
                        
                        """)
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    Text("""
                        Providing essential path
                        for a more healthier pregnacy
                        
                        
                        """)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal,10)
                    
                }
                
                //MARK: -Center
                
                ZStack {
                    ZStack {
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 260, height: 260, alignment: .center)
                    }  //:ZStack
                    
                    Image("mom2")
                        .resizable()
                        .scaledToFit()
                    
                }//:Center
                
                Spacer()
                
                
                
                //MARK: -Footer
            }
        }//VStack
    }//: ZStack
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

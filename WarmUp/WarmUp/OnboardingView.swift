//
//  OnboardingView.swift
//  WarmUp
//
//  Created by 조호준 on 1/21/24.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            Text("What's New in Photos")
                .font(.system(size: 35))
                .bold()
                .padding(.top, 50)
            
            ShortDescription(
                imageName: "person.2",
                title: "Shared Library",
                description: "Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people"
            )
            
            ShortDescription(
                imageName: "person.2",
                title: "Shared Library",
                description: "Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people"
            )
            
            ShortDescription(
                imageName: "person.2",
                title: "Shared Library",
                description: "Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people"
            )
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Continue")
                    .padding()
                    .frame(width: 350)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(.buttonBorder)
            }
            .padding(.bottom, 60)
        }
    }
}

#Preview {
    OnboardingView()
}

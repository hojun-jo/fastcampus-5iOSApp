//
//  OnboardingSample.swift
//  WarmUp
//
//  Created by 조호준 on 1/24/24.
//

import SwiftUI

struct OnboardingSample: View {
    
    let title: String
    let backgroundColor: Color
    var startButton: Button<Text>? = nil
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Text(title)
                startButton
                    .padding()
                    .background(.yellow)
                    .clipShape(.buttonBorder)
            }
        }
    }
}

#Preview {
    OnboardingSample(title: "온보딩 테스트", backgroundColor: .blue)
}

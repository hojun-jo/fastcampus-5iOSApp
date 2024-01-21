//
//  MyButton.swift
//  WarmUp
//
//  Created by 조호준 on 1/21/24.
//

import SwiftUI

struct MyButton: View {
    var title: String
    var color: Color
    
    var body: some View {
        Button {
            
        } label: {
            Text(title)
                .padding()
                .background(color)
                .foregroundStyle(.white)
                .font(.headline)
                .clipShape(.buttonBorder)
        }
    }
}

#Preview {
    MyButton(title: "Button4", color: .brown)
}

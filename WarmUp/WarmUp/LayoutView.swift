//
//  Layout.swift
//  WarmUp
//
//  Created by 조호준 on 1/21/24.
//

import SwiftUI

struct LayoutView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .padding()
            
            Text("Text Element 1")
                .font(.headline)
                .padding()
            Text("Text Element 2")
                .font(.subheadline)
                .padding()
            Text("Text Element 3")
                .font(.body)
                .padding()
            
            HStack {
                MyButton(title: "Button 1", color: .blue)
                MyButton(title: "Button 2", color: .green)
            }
            
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Complex Button")
                }
                .foregroundStyle(.white)
                .padding()
                .background(.orange)
                .clipShape(.buttonBorder)
            }
        }
    }
}

#Preview {
    LayoutView()
}

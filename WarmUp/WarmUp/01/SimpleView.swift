//
//  SimpleView.swift
//  WarmUp
//
//  Created by 조호준 on 1/21/24.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            
            Text("헤드라인 입니다.")
                .font(.headline)
                .bold()
                .padding()
            
            Text("서브헤드라인 입니다.")
                .font(.subheadline)
                .padding()
            
            Text("바디 입니다.")
                .font(.body)
                .padding()
            
            Button {
                
            } label: {
                Text("Click Me")
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(.buttonBorder)
                    .bold()
            }
        }
    }
}

#Preview {
    SimpleView()
}

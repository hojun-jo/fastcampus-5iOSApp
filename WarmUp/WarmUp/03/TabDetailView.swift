//
//  TabDetailView.swift
//  WarmUp
//
//  Created by 조호준 on 1/24/24.
//

import SwiftUI

struct TabDetailView: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("This is detail")
        }
    }
}

struct TabDetailView2: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                Text("This is detail")
                
                Button {
                    
                } label: {
                    Text("Continue")
                        .padding()
                        .background(.green)
                        .clipShape(.buttonBorder)
                }
            }
        }
    }
}

struct TabDetailView3: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("This is detail")
        }
    }
}

#Preview {
    TabDetailView()
}

//
//  MyTabView.swift
//  WarmUp
//
//  Created by 조호준 on 1/24/24.
//

import SwiftUI

struct MyTabView: View {
    var body: some View {
        TabView {
            TabDetailView()
                .badge(3)
                .tabItem {
                    Label("Detail", systemImage: "tray.and.arrow.down.fill")
                }
            
            TabDetailView2()
                .badge("text")
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            
            TabDetailView3()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    MyTabView()
}

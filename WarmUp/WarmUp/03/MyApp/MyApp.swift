//
//  MyApp.swift
//  WarmUp
//
//  Created by 조호준 on 1/24/24.
//

import SwiftUI

struct ListInformation: Hashable {
    let title: String
    let description: String
}

struct MyApp: View {
    
    @State var listInformations = [
        ListInformation(
            title: "첫 번째 페이지",
            description: "첫 번째 페이지 입니다"
        ),
        ListInformation(
            title: "두 번째 페이지",
            description: "두 번째 페이지 입니다"
        ),
        ListInformation(
            title: "세 번째 페이지",
            description: "세 번째 페이지 입니다"
        ),
        ListInformation(
            title: "네 번째 페이지",
            description: "네 번째 페이지 입니다"
        )
    ]
    
    @State var showModal = false
    
    var body: some View {
        TabView {
            FirstList(listInformations: $listInformations)
                .tabItem {
                    Label("Detail", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("두 번째 탭")
                .tabItem {
                    Label("Tab2", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("세 번째 탭")
                .tabItem {
                    Label("Tab3", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("네 번째 탭")
                .tabItem {
                    Label("Tab4", systemImage: "tray.and.arrow.down.fill")
                }
        }
        .sheet(isPresented: $showModal) {
            TabView {
                OnboardingSample(
                    title: "온보딩1",
                    backgroundColor: .blue
                )
                
                OnboardingSample(
                    title: "온보딩2",
                    backgroundColor: .green
                )
                
                OnboardingSample(
                    title: "온보딩2",
                    backgroundColor: .green,
                    startButton: Button {
                        showModal = false
                    } label: {
                        Text("Start")
                    }
                )
            }
            .tabViewStyle(.page)
        }
        .onAppear {
            showModal = true
        }
    }
}

#Preview {
    MyApp()
}

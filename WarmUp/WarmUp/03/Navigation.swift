//
//  Navigation.swift
//  WarmUp
//
//  Created by 조호준 on 1/24/24.
//

import SwiftUI

struct NavigationItem: Hashable {
    let title: String
    let description: String
}

struct Navigation: View {
    
    let navigationItems = [
        NavigationItem(
            title: "디테일 뷰로 이동하기",
            description: "데스티네이션 입니다"
        ),
        NavigationItem(
            title: "디테일 뷰로 이동하기2",
            description: "데스티네이션 입니다2"
        )
    ]

    @State var showModal = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(navigationItems, id: \.self) { item in
                    NavigationLink {
                        Text(item.description)
                    } label: {
                        Text(item.title)
                    }

                }
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        showModal = true
                    } label: {
                        Text("Add")
                    }
                }
            }
            .sheet(isPresented: $showModal) {
                Text("아이템 추가 페이지 입니다")
            }
            .navigationTitle("네비게이션")
        }
    }
}

#Preview {
    Navigation()
}

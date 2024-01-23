//
//  ModalView.swift
//  WarmUp
//
//  Created by 조호준 on 1/24/24.
//

import SwiftUI

struct ModalView: View {
    
    @State var showModal = false
    
    var body: some View {
        VStack {
            Text("메일 페이지 입니다")
            Button {
                showModal = true
            } label: {
                Text("Modal 화면 전환")
            }
        }
        .sheet(isPresented: $showModal) {
            DetailView(isPresented: $showModal)
        }
    }
}

#Preview {
    ModalView()
}

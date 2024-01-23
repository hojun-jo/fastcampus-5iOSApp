//
//  DetailView.swift
//  WarmUp
//
//  Created by 조호준 on 1/24/24.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        Text("모달 페이지 입니다")
        Button {
            isPresented = false
        } label: {
            Text("닫기")
        }
    }
}

#Preview {
    DetailView(isPresented: .constant(true))
}

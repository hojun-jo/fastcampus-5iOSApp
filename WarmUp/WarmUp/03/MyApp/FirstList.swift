//
//  FirstList.swift
//  WarmUp
//
//  Created by 조호준 on 1/24/24.
//

import SwiftUI

struct FirstList: View {
    
    @Binding var listInformations: [ListInformation]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(listInformations, id: \.self) { item in
                    NavigationLink {
                        Text(item.description)
                    } label: {
                        Text(item.title)
                    }
                }
            }
            .navigationTitle("리스트")
        }
    }
}

#Preview {
    FirstList(listInformations: .constant([
        ListInformation(
            title: "첫 번째 페이지",
            description: "첫 번째 페이지 입니다"
        ),
        ListInformation(
            title: "두 번째 페이지",
            description: "두 번째 페이지 입니다"
        )])
    )
}

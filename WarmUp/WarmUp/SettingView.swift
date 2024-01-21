//
//  SettingView.swift
//  WarmUp
//
//  Created by 조호준 on 1/22/24.
//

import SwiftUI

struct SettingInfo: Hashable {
    let title: String
    let imageName: String
    let backgroundColor: Color
    let foregroundColor: Color = .white
}

struct SettingView: View {
    
    var data = [
        [
            SettingInfo(
                title: "스크린타임",
                imageName: "hourglass",
                backgroundColor: .purple
            )
        ],
        [
            SettingInfo(
                title: "일반",
                imageName: "gear",
                backgroundColor: .gray
            ),
            SettingInfo(
                title: "손쉬운 사용",
                imageName: "person.crop.circle",
                backgroundColor: .blue
            ),
            SettingInfo(
                title: "개인정보 보호 및 보안",
                imageName: "hand.raised.fill",
                backgroundColor: .blue
            )
        ],
        [
            SettingInfo(
                title: "암호",
                imageName: "key.fill",
                backgroundColor: .gray
            )
        ]
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(data, id: \.self) { section in
                    Section {
                        ForEach(section, id: \.self) { item in
                            Label {
                                Text(item.title)
                            } icon: {
                                Image(systemName: item.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 18, height: 18)
                                    .padding(.all, 5)
                                    .background(item.backgroundColor)
                                    .foregroundStyle(item.foregroundColor)
                                    .clipShape(.buttonBorder)
                            }
                        }
                    }
                }
            }
            .navigationTitle("설정")
        }
    }
}

#Preview {
    SettingView()
}

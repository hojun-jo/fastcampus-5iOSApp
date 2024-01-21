//
//  ShortDescription.swift
//  WarmUp
//
//  Created by 조호준 on 1/21/24.
//

import SwiftUI

struct ShortDescription: View {
    let imageName: String
    let title: String
    let description: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 35)
                .padding(.leading)
                .foregroundStyle(.blue)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                Text(description)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
            .padding(.trailing)
        }
        .padding()
    }
}

#Preview {
    ShortDescription(
        imageName: "person.2",
        title: "Shared Library",
        description: "Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people"
    )
}

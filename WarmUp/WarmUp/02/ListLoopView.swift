//
//  ListLoopView.swift
//  WarmUp
//
//  Created by 조호준 on 1/21/24.
//

import SwiftUI

struct Fruit: Hashable {
    let name: String
    let matchFruitName: String
    let price: Int
}

struct ListLoopView: View {
    
    @State var favoriteFruits = [
        Fruit(
            name: "Apple",
            matchFruitName: "Banana",
            price: 1000
        ),
        Fruit(
            name: "Banana",
            matchFruitName: "Banana",
            price: 3000
        ),
        Fruit(
            name: "Cherry",
            matchFruitName: "Kiwi",
            price: 4000
        ),
        Fruit(
            name: "Kiwi",
            matchFruitName: "Elderberry",
            price: 2400
        ),
        Fruit(
            name: "Elderberry",
            matchFruitName: "Kiwi",
            price: 8000
        ),
    ]
    
    @State var fruitName: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("insert fruit name", text: $fruitName)
                    Button {
                        favoriteFruits.append(Fruit(
                            name: fruitName,
                            matchFruitName: "Apple",
                            price: 1000)
                        )
                    } label: {
                        Text("insert")
                            .padding()
                            .background(.blue)
                            .foregroundStyle(.white)
                            .clipShape(.buttonBorder)
                    }
                }
                .padding()
                
                List {
                    ForEach(favoriteFruits, id: \.self) { fruit in
                        VStack(alignment: .leading) {
                            Text("name: \(fruit.name)")
                            Text("matchFruitName: \(fruit.matchFruitName)")
                            Text("price: \(fruit.price)")
                        }
                    }.onDelete { indexSet in
                        favoriteFruits.remove(atOffsets: indexSet)
                    }
                }
                .navigationTitle("Fruit List")
            }
        }
    }
}

#Preview {
    ListLoopView()
}

//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
    let image: String
    let item: String
    let qt: Int
    
    init(imageName: String, itemName: String, quantity: Int){
        self.image = imageName
        self.item = itemName
        self.qt = quantity
    }
}

struct ContentView: View {
    
    var list = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4),
        Items(imageName: "eggs", itemName: "Eggs", quantity: 12)
    ]
    
    var snack = [
        Items(imageName: "oreo", itemName: "Oreos", quantity: 1),
        Items(imageName: "popcorn", itemName: "Popcorn", quantity: 3)
    ]
    
    var meat = [
        Items(imageName: "beef", itemName: "Beef", quantity: 4),
        Items(imageName: "chicken", itemName: "Chicken", quantity: 5)
    ]
    
    var body: some View {
        NavigationView {
            VStack{
                List {
                    Section(header: Text("Fruits")){
                        ForEach(list) { i in
                            CustomCell(imageName: i.image, itemName: i.item, quantity: i.qt)
                        }
                    }
                }.listStyle(InsetGroupedListStyle())
                
                List {
                    Section(header: Text("Snacks")){
                        ForEach(snack) { i in
                            CustomCell(imageName: i.image, itemName: i.item, quantity: i.qt)
                        }
                    }
                }.listStyle(InsetGroupedListStyle())
                
                List {
                    Section(header: Text("Meats")){
                        ForEach(meat) { i in
                            CustomCell(imageName: i.image, itemName: i.item, quantity: i.qt)
                        }
                    }
                }.listStyle(InsetGroupedListStyle())
            }
            .navigationTitle("Shopping List")
        }
    }
}

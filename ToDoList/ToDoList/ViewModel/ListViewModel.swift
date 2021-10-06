//
//  ListViewModel.swift
//  ToDoList
//
//  Created by PMStudent on 10/6/21.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var item: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "Todo item 1", isCompleted: false),
            ItemModel(title: "Todo item 2", isCompleted: true),
            ItemModel(title: "Todo item 3", isCompleted: false),
        ]
        item.append(contentsOf: newItems)
    }
    func deleteItem(indexSet: IndexSet) {
        item.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
    item.move(fromOffsets: from, toOffset: to)
        
    }
}

//
//  ListViewModel.swift
//  ToDoList
//
//  Created by PMStudent on 10/6/21.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var item: [ItemModel] = []
    let itemsKey: String = "items_list"
    
    init() {
        getItems()
    }
    
    func getItems() {
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else {return}
        
        self.item = savedItems
    }
    func deleteItem(indexSet: IndexSet) {
        item.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
    item.move(fromOffsets: from, toOffset: to)
        
    }
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        item.append(newItem)
    }
    func updateItem(items: ItemModel) {
        if let index = item.firstIndex(where: { $0.id == items.id}) {
            item[index] = items.updateCompletion()
            saveItem()
        }
    }
    
    func saveItem() {
        if let encodedData = try? JSONEncoder().encode(item) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
    
}

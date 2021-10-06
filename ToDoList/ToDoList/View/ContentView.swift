//
//  ContentView.swift
//  ToDoList
//
//  Created by PMStudent on 10/5/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.item) { item in
                ListRowView(item: item)
            }
            
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
        }
            .listStyle(PlainListStyle())
            .navigationTitle("Todo List 🦤")
            .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView())
                )
            }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}

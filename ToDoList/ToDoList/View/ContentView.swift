//
//  ContentView.swift
//  ToDoList
//
//  Created by PMStudent on 10/5/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var item: [String] = [
    "My first todo list item",
    "My second todo list item",
    "The third one."
    ]
    
    var body: some View {
        List {
            ForEach(item, id: \.self) {
                item in ListRowView(title: item)
            }
        }
        .navigationTitle("Todo List 🦤")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}

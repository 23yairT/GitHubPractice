//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by PMStudent on 10/5/21.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(listViewModel)
        }
    }
}

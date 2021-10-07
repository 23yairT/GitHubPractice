//
//  AddView.swift
//  ToDoList
//
//  Created by PMStudent on 10/6/21.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    @State var alertTile : String = ""
    @State var showAlert: Bool = false
    @EnvironmentObject var listViewModel: ListViewModel
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray5))
                    .cornerRadius(10)
                
                Button(action: saveButtonPressed, label: {
                    Text("SAVE")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🦤")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 1 {
            alertTile = "Your new todo item must be at least 1 character long. 💩"
            showAlert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert {
        return Alert(title: Text(alertTile))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}

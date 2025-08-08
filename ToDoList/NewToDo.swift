//
//  NewToDo.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDo: View {
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack {
            Text("Task Title:")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.4549019607843137, green: 0.5529411764705883, blue: 0.6823529411764706))
            TextField("Enter the task description...", text: $toDoItem.title)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
            }
            
            Button {
                
            } label: {
                Text("Save")
            }
        } // end of VStack
        .padding()
        
    } // end of the body
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    } // end of function
}

#Preview {
    NewToDo(showNewTask: .constant(false), toDoItem: toDoItem: "", isImportant: false)
}

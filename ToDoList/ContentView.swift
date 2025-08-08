//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData
struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.title)
                    .font(.system(size:40))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.4549019607843137, green: 0.5529411764705883, blue: 0.6823529411764706))
                Spacer() //push left/right
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .foregroundColor(Color(red: 0.4549019607843137, green: 0.5529411764705883, blue: 0.6823529411764706))
                }
            } // end of HStack
            .padding()
            Spacer() // push up/down
            
            List { // Displays list of tasks
                ForEach(toDos) { toDoItem in if toDoItem.isImportant {
                    Text("‼" + toDoItem.title)
                } else {
                    Text(toDoItem.title)
                }
                    
                }
            }
            
        } // end of the Vstack
        if showNewTask {
            NewToDo(showNewTask: $showNewTask, toDoItem: ToDoItem(title:"", isImportant: false))
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: ToDoItem.self, inMemory: true)
}

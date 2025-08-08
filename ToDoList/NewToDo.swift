//
//  NewToDo.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDo: View {
    var body: some View {
        VStack {
            Text("Task Title:")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.4549019607843137, green: 0.5529411764705883, blue: 0.6823529411764706))
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
            }
        } // end of VStack
        .padding()
        
        Button {
            
        } label: {
            Text("Save")
        }
    }
}

#Preview {
    NewToDo()
}

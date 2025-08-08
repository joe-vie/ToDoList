//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
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
                    
                } label: {
                    Text("+")
                        .foregroundColor(Color(red: 0.4549019607843137, green: 0.5529411764705883, blue: 0.6823529411764706))
                }
            } // end of HStack
            Spacer() //push up/down
        } // end of the Vstack
        .padding()
    }
}

#Preview {
    ContentView()
}

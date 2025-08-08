//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import Foundation
import SwiftData // let's us do CRUD operations

@Model // adds model macro so our data stores and syncs across the different files

class ToDoItem {
    
    var title: String // what the task is
    var isImportant: Bool // Is the task important
    
    init(title: String, isImportant: Bool) {
        self.title = title
        self.isImportant = isImportant
    }
}

//
//  TodoCollection.swift
//  Todo-App
//
//  Created by shinbo maiki on 2015/05/27.
//  Copyright (c) 2015年 shinbo maiki. All rights reserved.
//

import UIKit

class TodoCollection: NSObject {
    var todos:[Todo] = []
    
    func fetchTodos() {
        for (var i = 0; i < 7; i++) {
            let todo = Todo()
            todo.title = "Todo\(i + 1)"
            self.todos.append(todo)
        }
    }
}

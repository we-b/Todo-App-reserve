//
//  TodoCollection.swift
//  Todo-App
//
//  Created by shinbo maiki on 2015/05/27.
//  Copyright (c) 2015年 shinbo maiki. All rights reserved.
//

import UIKit

class TodoCollection: NSObject {
    static let sharedInstance = TodoCollection()
    var todos:[Todo] = []
    
    func addTodoCollection(todo: Todo){
        self.todos.append(todo)
        self.save()
    }
    
    func save (){
        var todoList: Array<Dictionary<String, AnyObject>> = []
        for todo in todos {
            let todoDic = todo.convertDictionary()
            todoList.append(todoDic)
        }
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(todoList, forKey: "todoLists")
        defaults.synchronize()
    }
    
    func fetchTodos() {
        var todos:[Todo] = []
        let defaults = NSUserDefaults.standardUserDefaults()
        if let todoList = defaults.objectForKey("todoLists") as? Array<Dictionary<String, AnyObject>> {
            for todoDic in todoList {
                let todo = Todo(attributes: todoDic)
                self.todos.append(todo)
            }
        }
    }
}

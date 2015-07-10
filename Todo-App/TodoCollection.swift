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
        var todoLists: Array<Dictionary<String, AnyObject>> = []
        for todo in todos {
            let todoDic = TodoCollection.convertDictionary(todo)
            todoLists.append(todoDic)
        }
        println(todoLists)
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(todoLists, forKey: "todoLists")
    }
    
    class func convertDictionary(todo: Todo) -> Dictionary<String, AnyObject> {
        var dic = Dictionary<String, AnyObject>()
        dic["title"] = todo.title
        dic["descript"] = todo.descript
        dic["priority"] = todo.priority.rawValue
        return dic
    }
    
}

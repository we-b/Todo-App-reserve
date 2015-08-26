//
//  Todo.swift
//  Todo-App
//
//  Created by shinbo maiki on 2015/05/27.
//  Copyright (c) 2015年 shinbo maiki. All rights reserved.
//

import UIKit

enum TodoProirity:Int{
    case Low = 0
    case Middle = 1
    case High = 2
    
    func color() -> UIColor {
        switch self {
        case .Low:
            return UIColor.yellowColor()
        case .Middle:
            return UIColor.greenColor()
        case .High:
            return UIColor.redColor()
        }
    }
}


class Todo: NSObject {
    var title = ""
    var descript = ""
    var priority:TodoProirity = .Low

    
    override init() {
        super.init()
    }

    init(attributes: Dictionary<String, AnyObject>) {
        self.title = attributes["title"] as! String
        self.descript = attributes["descript"] as! String
        self.priority = TodoProirity(rawValue: attributes["priority"] as! Int)!
    }

//    convenience init(attributes: Dictionary<String, AnyObject>) {
//        self.init()
//        self.title = attributes["title"] as! String
//        self.descript = attributes["descript"] as! String
//        self.priority = TodoProirity(rawValue: attributes["priority"] as! Int)!
//    }
    
    func toDictionary() -> Dictionary<String, AnyObject> {
        var dic = Dictionary<String, AnyObject>()
        dic["title"] = self.title
        dic["descript"] = self.descript
        dic["priority"] = self.priority.rawValue
        return dic
    }
    
}

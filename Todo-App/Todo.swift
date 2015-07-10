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
}

//
//  NewTodoViewController.swift
//  Todo-App
//
//  Created by 山田　潤 on 2015/07/06.
//  Copyright (c) 2015年 shinbo maiki. All rights reserved.
//

import UIKit

class NewTodoViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var todoField: UITextField!
    @IBOutlet weak var descriptionView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionView.layer.cornerRadius = 3
        descriptionView.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).CGColor
        descriptionView.layer.borderWidth = 1
        let tapRecognizer = UITapGestureRecognizer(target: self, action: "tapGesture:")
        self.view.addGestureRecognizer(tapRecognizer)
        todoField.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.tintColor = UIColor.blackColor()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "閉じる", style: UIBarButtonItemStyle.Plain, target: self, action: "close")
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "保存", style: UIBarButtonItemStyle.Plain, target: self, action: "save")
    }
    
    func close(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func tapGesture(sender: AnyObject){
        todoField.resignFirstResponder()
        descriptionView.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        todoField.resignFirstResponder()
        return true
    }

    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

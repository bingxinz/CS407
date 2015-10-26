//
//  DetailViewController.swift
//  calendar
//
//  Created by Bingxin Zhangon 10/25/15.
//  Copyright © 2015 Bingxin Zhang. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var timeTextField: UITextField! = UITextField()
    @IBOutlet var titleTextField: UITextField! = UITextField()
    @IBOutlet var notesTextField: UITextView! = UITextView()
    
    var todoData:NSDictionary = NSDictionary()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeTextField.userInteractionEnabled = false
        titleTextField.userInteractionEnabled = false
        notesTextField.userInteractionEnabled = false
        
        titleTextField.text = todoData.objectForKey("itemTitle") as! String
        notesTextField.text = todoData.objectForKey("itemNote") as! String
        if let val = todoData["date"] {
            timeTextField.text = todoData.objectForKey("date") as! String
        }
        else {
            timeTextField.text = ""
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func deleteItem(sender: AnyObject) {
        var userDefaults:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        var itemList:NSMutableArray = userDefaults.objectForKey("itemList") as! NSMutableArray
        var mutableItemList = NSMutableArray()
        for dict:AnyObject in itemList {
            mutableItemList.addObject(dict)
        }
        
        mutableItemList.removeObject(todoData)
        
        userDefaults.removeObjectForKey("itemList")
        userDefaults.setObject(mutableItemList, forKey: "itemList")
        userDefaults.synchronize()
        
        self.navigationController?.popToRootViewControllerAnimated(true)
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

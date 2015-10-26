//
//  AddViewController.swift
//  calendar
//
//  Created by Bingxin Zhang on 10/25/15.
//  Copyright © 2015 Bingxin Zhang. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet var datePicker: UIDatePicker! = UIDatePicker()
    @IBOutlet var notesTextField: UITextView! = UITextView()
    @IBOutlet var titleTextField: UITextField! = UITextField()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButtonTapped(sender: AnyObject) {
//        print("Button Tapped")
        var userDefaults:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        var itemList:NSMutableArray? = userDefaults.objectForKey("itemList") as? NSMutableArray
        var dataSet:NSMutableDictionary = NSMutableDictionary()
        dataSet.setObject(titleTextField.text!, forKey: "itemTitle")
        dataSet.setObject(notesTextField.text, forKey: "itemNote")
        
        
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        var strDate = dateFormatter.stringFromDate(datePicker.date)
        
        dataSet.setObject(strDate, forKey: "date")
        
        if ((itemList) != nil) {
            var newMutableList:NSMutableArray = NSMutableArray();
            
            for dict:AnyObject in itemList!{
                newMutableList.addObject(dict)
            }
            
            userDefaults.removeObjectForKey("itemList")
            newMutableList.addObject(dataSet)
            userDefaults.setObject(newMutableList, forKey: "itemList")
        }
        else {
            userDefaults.removeObjectForKey("itemList")
            itemList = NSMutableArray()
            itemList!.addObject(dataSet)
            userDefaults.setObject(itemList, forKey: "itemList")
        }
        
        userDefaults.synchronize()
        
        self.navigationController!.popToRootViewControllerAnimated(true)
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

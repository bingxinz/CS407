//
//  ViewController.swift
//  quiz
//
//  Created by Luo Xiaoshu on 10/2/15.
//  Copyright © 2015 Bingxin Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var userInput: UITextField!
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if userInput.text == "Finn" {
            number = number + 1
        }
        let DestViewController : ImageQuestion = segue.destinationViewController as! ImageQuestion
        DestViewController.number = self.number
    }

}


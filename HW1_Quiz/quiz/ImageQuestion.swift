//
//  ImageQuestion.swift
//  quiz
//
//  Created by Luo Xiaoshu on 10/2/15.
//  Copyright © 2015 Bingxin Zhang. All rights reserved.
//

import UIKit

class ImageQuestion: UIViewController {
    
    var number = Int()
    
    @IBOutlet weak var userInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if userInput.text == "Marceline" {
            number = number + 1
        }
        let DestViewController : ViewController2 = segue.destinationViewController as! ViewController2
        DestViewController.number = self.number
    }

}

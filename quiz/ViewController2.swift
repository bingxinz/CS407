//
//  ViewController2.swift
//  quiz
//
//  Created by Luo Xiaoshu on 10/2/15.
//  Copyright © 2015 Bingxin Zhang. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var number = Int()
    
    @IBOutlet weak var ouput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ouput.text = "You got \(number) correct!"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

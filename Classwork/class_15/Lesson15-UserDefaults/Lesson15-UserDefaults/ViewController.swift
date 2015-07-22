//
//  ViewController.swift
//  Lesson15-UserDefaults
//
//  Created by Kristopher Kane on 7/22/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    SEE REFACTOR IN LESSONS!
    let counterID = "counterID"
    
    @IBOutlet weak var labelLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let previousSessionNumber = defaults.integerForKey(counterID)
        labelLabel.text = "\(previousSessionNumber)"
        
    }
    
    @IBAction func buttonButton(sender: AnyObject) {
        let labelNumber = labelLabel.text?.toInt()
        
        if let labelNumber = labelNumber {
            let newNumber = labelNumber + 1
            labelLabel.text = "\(newNumber)"
            
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setInteger(newNumber, forKey: counterID)
        }
    }


}


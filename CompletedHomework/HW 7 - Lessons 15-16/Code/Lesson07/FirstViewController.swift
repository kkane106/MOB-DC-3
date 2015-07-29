//
//  FirstViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var userDefaultsTextView: UITextView!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaultStrings = defaults.stringForKey("test_string")
        let defaultNumbers = defaults.integerForKey("test_number")
        if let defaultStrings = defaultStrings {
            userDefaultsTextView.text = " String: \(defaultStrings) \n Number: \(defaultNumbers)"

        }
    }
}
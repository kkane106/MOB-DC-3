//
//  ViewController.swift
//  NSNotification
//
//  Created by Kristopher Kane on 7/8/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // in Obj C, you have to have a colon at the end of the selector
        let center = NSNotificationCenter.defaultCenter().addObserver(self, selector: "receiver:", name: "Hello World", object: nil)
    }
    
    func receiver(notification: NSNotification) {
        println("Notification received!")
    }

}


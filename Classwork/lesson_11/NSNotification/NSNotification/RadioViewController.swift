//
//  RadioViewController.swift
//  NSNotification
//
//  Created by Kristopher Kane on 7/8/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class RadioViewController: UIViewController {
    @IBAction func postAction(sender: UIButton) {
        let notification = NSNotification(name: "Hello World", object: self)
        let center = NSNotificationCenter.defaultCenter()
        center.postNotification(notification)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

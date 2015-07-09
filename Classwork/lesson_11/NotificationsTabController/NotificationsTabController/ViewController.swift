//
//  ViewController.swift
//  NotificationsTabController
//
//  Created by Kristopher Kane on 7/8/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func redButton(sender: UIButton) {
        let info = ["color": UIColor.blackColor()]
        
        let center = NSNotificationCenter.defaultCenter()
        center.postNotificationName("changeBackground", object: self, userInfo: info)
    }

    func doChangeBackground(notification: NSNotification) {
        let info = notification.userInfo!
        self.view.backgroundColor = info["color"] as! UIColor
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let center = NSNotificationCenter.defaultCenter()
        center.addObserver(self, selector: "doChangeBackground:", name: "changeBackground", object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


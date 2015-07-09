//
//  SecondViewController.swift
//  NotificationsTabController
//
//  Created by Kristopher Kane on 7/8/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func blueButton(sender: UIButton) {
        let info = ["color": UIColor.greenColor()]
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

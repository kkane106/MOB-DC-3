//
//  ModalViewController.swift
//  Lesson03
//
//  Created by Kristopher Kane on 7/2/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {
    let dismissButton = UIButton()
    let myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
            view.backgroundColor = UIColor(red: 0.8, green: 0.5, blue: 0.2, alpha: 1.0)
            myLabel.text = "You have arrived at the Modal"
            myLabel.frame = CGRect(x: 220,y: 10,width: 300,height: 50)
            myLabel.font = UIFont(name: "Helvetica", size: 24)
            myLabel.textAlignment = .Left
            view.addSubview(myLabel)

            dismissButton.setTitle("Done", forState: .Normal)
            dismissButton.titleLabel!.font = UIFont(name: "Helvetica", size: 24)
            dismissButton.titleLabel?.textAlignment = .Left
            dismissButton.frame = CGRectMake(150, 175, 200, 50)
            dismissButton.addTarget(self, action: "modalDidLoad", forControlEvents: .TouchUpInside)
            view.addSubview(dismissButton)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func modalDidLoad() {
        dismissViewControllerAnimated(true, completion: nil)
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

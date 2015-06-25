//
//  ViewController.swift
//  PrepareForSequeExample
//
//  Created by Kristopher Kane on 6/24/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        super.prepareForSegue(segue, sender: sender)
        
        if let identifier = segue.identifier {
            if identifier == "showLocation" {
                let locationVC = segue.destinationViewController as! LocationViewController
                    locationVC.location = locationField.text
            } else if identifier == "showName" {
                let nameVC = segue.destinationViewController as! NameViewController
                    nameVC.name = nameField.text
            }
        }
    }

}

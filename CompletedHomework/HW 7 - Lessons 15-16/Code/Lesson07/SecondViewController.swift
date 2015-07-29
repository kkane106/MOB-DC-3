//
//  SecondViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var bundleTextView: UITextView!
    
    
// I didn't format these in the text view, I'm simply outputting the dictionary...
    
// I moved the Root.plist into my main tree, how do I point at it when it's in a subfolder?
    
// How do I get rid of these AnyObject warnings?
    override func viewDidLoad() {
        super.viewDidLoad()
        let rootPath = NSBundle.mainBundle().pathForResource("Root", ofType: "plist")

        if let rootPath = rootPath {
            let settings = NSDictionary(contentsOfFile: rootPath)
            if let settings = settings {
                let preferences = settings["PreferenceSpecifiers"]
                if let preferences = preferences {
                    let nameSettings = preferences[1]
                    if let nameSettings = nameSettings {
                        let name = preferences[1]
                        let slider = preferences[2]
                        bundleTextView.text = "\(name) \(slider)"
                    }
                }
            }
        }
    }
}

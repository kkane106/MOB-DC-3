//
//  ThirdViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var flatFileTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        let path = NSBundle.mainBundle().pathForResource("flat", ofType: "txt")
        var text = String(contentsOfFile: path!, encoding: NSUTF8StringEncoding, error: nil)!
        flatFileTextView.text = text

    }
    
    @IBAction func saveUserText(sender: UIBarButtonItem) {
        let path = NSBundle.mainBundle().pathForResource("flat", ofType: "txt")
        flatFileTextView.text.writeToFile(path!, atomically: true, encoding: NSUTF8StringEncoding, error: nil)
        
    }
    
}


//
//  SixthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {

    @IBOutlet weak var readFromArrayTextView: UITextView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        let path = NSBundle.mainBundle().pathForResource("array", ofType: "txt")
        var text = String(contentsOfFile: path!, encoding: NSUTF8StringEncoding, error: nil)!
        readFromArrayTextView.text = text
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }
}

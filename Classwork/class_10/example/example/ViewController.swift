//
//  ViewController.swift
//  example
//
//  Created by Kristopher Kane on 7/6/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CountUpDelegate {
    @IBOutlet weak var countLabel: UILabel!
    
    var counter = 0
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showCountUp" {
            let destinationVC = segue.destinationViewController as! CountUpViewController
            destinationVC.delegate = self
        }
    }
    
    func addOneToLabel() {
        counter++
        countLabel.text = "\(counter)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


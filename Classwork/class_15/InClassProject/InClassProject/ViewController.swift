//
//  ViewController.swift
//  InClassProject
//
//  Created by Kristopher Kane on 7/22/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewListButton: UIButton!
    @IBOutlet weak var movieTextField: UITextField!
    
    var movies : [String] = []
    let defaults = NSUserDefaults.standardUserDefaults()
    let moviesID = "moviesID"

    @IBAction func addToListAction(sender: AnyObject) {
        movies.append(movieTextField.text)
        defaults.setValue(movies, forKey: moviesID)
        println(movies)
        println(defaults.valueForKey("moviesID"))
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}


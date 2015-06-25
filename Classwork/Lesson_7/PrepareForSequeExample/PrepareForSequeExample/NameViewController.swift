//
//  NameViewController.swift
//  PrepareForSequeExample
//
//  Created by Kristopher Kane on 6/24/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = name {
            nameLabel.text = name
        }
        // Do any additional setup after loading the view.
    }

}

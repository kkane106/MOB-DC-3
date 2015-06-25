//
//  LocationViewController.swift
//  PrepareForSequeExample
//
//  Created by Kristopher Kane on 6/24/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    
    var location: String?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        if let location = location {
            locationLabel.text = location
        }
    }
}

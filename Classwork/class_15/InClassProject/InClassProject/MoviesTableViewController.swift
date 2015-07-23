//
//  MoviesTableViewController.swift
//  InClassProject
//
//  Created by Kristopher Kane on 7/22/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let songs = NSBundle.mainBundle().pathForResource("songs", ofType: "plist") {
            println(songs)
        }
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCellWithIdentifier(cellID) as! UITableViewCell
        cell.textLabel?.text = "Error"

        return cell
    }
}
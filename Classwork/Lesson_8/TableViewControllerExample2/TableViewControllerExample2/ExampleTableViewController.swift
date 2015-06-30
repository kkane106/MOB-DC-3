//
//  ExampleTableViewController.swift
//  TableViewControllerExample2
//
//  Created by Kristopher Kane on 6/29/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class ExampleTableViewController: UITableViewController {
    
    var names = ["Thomas", "Kris", "Arthur"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("loaded")
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return names.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

        return cell
    }

}

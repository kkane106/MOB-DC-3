//
//  ViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var arrayTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var array = [String]()
    
    // new cell identifier
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set up the UITextFieldDelegate as the textfield
        arrayTextField.delegate = self
        
        // set up the UITableViewDelegate and UITableViewDataSource as tableView
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
//        self.dismissViewControllerAnimated(false, completion: nil)
        self.dismissViewControllerAnimated(false, completion: { () -> Void in
            self.view.backgroundColor = UIColor.blueColor()
        })
        /*
        TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. Accept keyboard input from the text view when the return key is pressed. Add the string that was entered into the text view into an array of strings (stored in this class).
        TODO two: Make this class a UITableViewDelegate and UITableViewDataSource that supply the above table view with cells. These cells should correspond to the text entered into the text box. E.g. If the text "one", then "two", then "three" was entered into the text box, there should be three cells in this table view that contain those strings in order.
        
        */
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Dismiss keyboard!
        self.view.endEditing(true)
        
        array.append(self.arrayTextField.text)
        println(array)
        tableView.reloadData()
        return true
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID) as! UITableViewCell
        cell.textLabel?.text = array[indexPath.row]
        
        
        return cell
    }
    
}


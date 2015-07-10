//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UITextViewDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var keyView: UITextView!
    @IBOutlet weak var valueView: UITextView!
    @IBOutlet weak var mapTableView: UITableView!
    
    var dictionary = [String: String]()
    
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let center = NSNotificationCenter.defaultCenter()
        center.addObserver(self, selector: "doChangeTextViewBlue:", name: UIKeyboardWillShowNotification, object: nil)
        center.addObserver(self, selector: "doChangeTextViewRed:", name: UIKeyboardWillHideNotification, object: nil)
        
        keyView.delegate = self
        valueView.delegate = self
        
        mapTableView.delegate = self
        mapTableView.dataSource = self
        
        mapTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
    }

    func doChangeTextViewBlue(notification: NSNotification) {
        keyView.backgroundColor = .blueColor()
        valueView.backgroundColor = .blueColor()
    }
    
    func doChangeTextViewRed(notification: NSNotification) {
        keyView.backgroundColor = .redColor()
        valueView.backgroundColor = .redColor()
        
    }
    
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        if textView == valueView && text == "\n" {
            dictionary[keyView.text] = valueView.text
            textView.resignFirstResponder()
            mapTableView.reloadData()
            return false
        }
        return true
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dictionary.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID) as! UITableViewCell
        cell.textLabel?.text = "\(dictionary.keys.array[indexPath.row]): \(dictionary.values.array[indexPath.row])"
        
        return cell
    }

}

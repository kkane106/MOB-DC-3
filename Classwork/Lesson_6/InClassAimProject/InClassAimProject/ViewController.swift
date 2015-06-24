//
//  ViewController.swift
//  InClassAimProject
//
//  Created by Kristopher Kane on 6/22/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var sexField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextFields()
        setupButtons()
    }
    
// Abstracts all of the setup making the viewDidLoad() method more concise
    func setupTextFields() {
        nameField.placeholder = "Name"
        ageField.placeholder = "Age"
        sexField.placeholder = "Sex"
        locationField.placeholder = "Location"
        
        formatTextField(nameField)
        formatTextField(ageField)
        formatTextField(sexField)
        formatTextField(locationField)
        
        //        How to set keyboard type for individuals without the use of a method
        
        //        nameField.keyboardType = UIKeyboardType.Default
        //        ageField.keyboardType = UIKeyboardType.NumberPad
        //        sexField.keyboardType = UIKeyboardType.Default
        //        locationField.keyboardType = UIKeyboardType.Default
        
        //        Same thing as above
        
        //        nameField.keyboardType = .Default
        //        ageField.keyboardType = .NumberPad
        //        sexField.keyboardType = .Default
        //        locationField.keyboardType = .Default
        
    }
    
// Simplifies the keyboardType setting for UITextFields, also sets the textColor attribute
    func formatTextField(textField: UITextField) {
        textField.keyboardType = (textField == ageField) ? .NumberPad : .ASCIICapable
        textField.textColor = (textField == sexField) ? UIColor.redColor() : UIColor.blueColor()
    }
// Simplifies button setup and is called in viewDidLoad()
    func setupButtons() {
        clearButton.setTitle("Clear", forState: UIControlState.Normal)
        submitButton.setTitle("Submit", forState: UIControlState.Normal)
    }
    
// Connects the "Submit" button to the ProfileViewController, allowing the navigationController to serve that view
    @IBAction func submitAction(sender: UIButton) {
        
    }

    @IBAction func clearAction(sender: UIButton) {
        nameField.text = nil
        sexField.text = nil
        ageField.text = nil
        locationField.text = nil
    }
/* 
    If the seque's identifier is "showProfile" --> references the seque on Story Board
    --> set a constant 'destinationVC' equal to the destination, which is an optional being forced unwrapped as ProfileViewController (class)
*/
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showProfile" {
            let destinationVC = segue.destinationViewController as! ProfileViewController
            destinationVC.age = ageField.text
            destinationVC.name = nameField.text
            destinationVC.location = locationField.text
            destinationVC.sex = sexField.text
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


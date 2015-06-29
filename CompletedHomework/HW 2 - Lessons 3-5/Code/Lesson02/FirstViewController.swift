//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var name: String?
    var age: String?
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var generateTextButton: UIButton!
    @IBOutlet weak var textToReplaceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        ageField.keyboardType = .NumberPad
        nameField.keyboardType = .ASCIICapable
    }
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
    
    @IBAction func generateTextAction(sender: UIButton) {
        if nameField.text == "" && ageField.text == "" {
            textToReplaceLabel.text = sayHelloWorld()
        } else if nameField.text == "" && ageField.text != "" {
            textToReplaceLabel.text = sayHelloWorld() + sayWhatCanYouDo(ageField.text) + sayEverythingYouCanDo(ageField.text)
        } else {
            textToReplaceLabel.text =  sayHelloWorld() + sayHelloNameAge(name: nameField.text, age: ageField.text) + sayWhatCanYouDo(ageField.text) + sayEverythingYouCanDo(ageField.text)
        }
    }
    
/*
    I used multiple carriage returns here instead of a new label as, depending on the input, there could be
    different edge case outputs...not sure if its what you wanted, let me know!
*/
    func sayHelloWorld() -> String {
        return "hello world!" + "\r"
    }
    
    func sayHelloNameAge(#name: String, age: String) -> String {
        return "Hello \(name), you are \(age) years old!" + "\r"
        
    }
    
    func sayWhatCanYouDo(age: String) -> String {
        let ageInt = age.toInt()
        var response: String = ""
        if ageInt! > 20 {
            response = "You can drink" + "\r"
        } else if ageInt! > 17 {
            response = "You can vote" + "\r"
        } else if ageInt! > 15 {
            response = "You can drive" + "\r"
        } else {
            response = "You can't do anything, did you enter an age?" + "\r"
        }
        return response
    }
    
    func sayEverythingYouCanDo(age: String) -> String {
        let ageInt = age.toInt()
        var response: String = ""
        let drive = "You can drive", vote = " and vote", drink = " and drink (but not at the same time"
        if ageInt! > 20 {
            response = drive + vote + drink
        } else if ageInt! > 17 {
            response = drive + vote
        } else if ageInt! > 15 {
            response = drive
        } else {
            response = "You can't do anything, did you enter an age?"
        }
        return response
    }
    
}

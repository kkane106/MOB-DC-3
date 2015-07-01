//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    

    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var calculatedNumberLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    var calculatedNumber = 0
    
//  set keypad to numberpad to sanitize data input
    override func viewDidLoad() {
        super.viewDidLoad()
        numberField.keyboardType = .NumberPad
    }
    
//  Is there an easier way to deal with text fields so that I don't have to keep converting to/from strings?
    @IBAction func addAction(sender: UIButton) {
        addNumberToCalculation(numberField.text)
        calculatedNumberLabel.text = String(calculatedNumber)
    }
    
    func addNumberToCalculation(number:String) {
        if let numberToAdd = number.toInt() {
            calculatedNumber = calculatedNumber + numberToAdd
        } else {
            calculatedNumberLabel.text = "Please enter a number"
        }
    }
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
}

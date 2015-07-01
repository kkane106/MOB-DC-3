//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var numberInputField: UITextField!
    @IBOutlet weak var evenOrOddLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
//    Sanitize data input
    override func viewDidLoad() {
        super.viewDidLoad()
        numberInputField.keyboardType = .NumberPad
    }
    
    @IBAction func calculateAction(sender: UIButton){
        if let numberInput: Int = numberInputField.text.toInt() {
            evenOrOddLabel.text = evenOrOddNumber(numberInput)
        } else {
            evenOrOddLabel.text = "Please enter a number"
        }

    }
    
    func evenOrOddNumber(number: Int) -> String{
        if number % 2 == 0 {
            return "is even"
        }
        return "is not even"
    }
    
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
}

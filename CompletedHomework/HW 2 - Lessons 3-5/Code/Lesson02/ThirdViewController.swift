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
    
    func evenOrOddNumber(number: Int) {
        var even = false
        if number % 2 == 0 {
            even = true
        }
    }
    
/*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

*/
}

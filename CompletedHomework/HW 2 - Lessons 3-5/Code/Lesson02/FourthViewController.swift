//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var fibonacciLabel: UILabel!
    @IBOutlet weak var calculateFibonacciButton: UIButton!
    
//    Sanitize data input
    override func viewDidLoad() {
        super.viewDidLoad()
        numberField.keyboardType = .NumberPad
    }
    
//    References FibonacciAdder class located in --> FibonacciAdder.swift
    @IBAction func calculateFibonacciAction(sender: UIButton) {
        let fibonacciLookup = FibonacciAdder()
        let index = numberField.text.toInt()
        fibonacciLookup.fibonacciNumberAtIndex(index!)
        fibonacciLabel.text = String(fibonacciLookup.fibonacciIndex)
    
    }
/*
    BONUS TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.v
    The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
*/
}
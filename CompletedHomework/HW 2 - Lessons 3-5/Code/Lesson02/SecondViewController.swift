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
    
    
    @IBAction func addAction(sender: UIButton) {
        addNumberToCalculation(numberField.text)
        calculatedNumberLabel.text = String(calculatedNumber)
    }
    
    func addNumberToCalculation(number:String) {
        let numberToAdd = number.toInt()
        if let numberToAdd = numberToAdd {
            calculatedNumber = calculatedNumber + numberToAdd
        }
    }
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
}

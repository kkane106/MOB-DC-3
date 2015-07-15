//
//  CodeViewController.swift
//  RobotAutoLayoutExample
//
//  Created by Kristopher Kane on 7/13/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let errorLabel = UILabel()
        //YOU NEED THIS --> otherwise constraints will not work
        errorLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        errorLabel.text = "We could not find your email address"
        errorLabel.textColor = UIColor.redColor()
        errorLabel.backgroundColor = UIColor.yellowColor()
        errorLabel.numberOfLines = 0
        errorLabel.textAlignment = .Center
        view.addSubview(errorLabel)
        
        let leftConstraint = NSLayoutConstraint(
            item: errorLabel,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: emailField,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1.0, constant: 0
        )
        
        let topConstraint = NSLayoutConstraint(
            item: errorLabel,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: emailField,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0, constant: 10
        )
        
        let rightConstraint = NSLayoutConstraint(
            item: errorLabel,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: emailField,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1.0, constant: 0
        )
        
        
        // These turn the constraints on
        leftConstraint.active = true
        topConstraint.active = true
        rightConstraint.active = true
    }
    
    // Visual formatting language --> bit of a mess but very powerful
    func setupVFLConstraints() {
        let labelA = UILabel()
        labelA.setTranslatesAutoresizingMaskIntoConstraints(false)
        labelA.backgroundColor = UIColor.blackColor()
        labelA.text = "This is A"
        view.addSubview(labelA)
        
        let labelB = UILabel()
        labelB.setTranslatesAutoresizingMaskIntoConstraints(false)
        labelB.backgroundColor = UIColor.yellowColor()
        labelB.text = "This is B"
        view.addSubview(labelB)
        
        let array = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|-0-[labelA(100)]-[labelB(110)]",
            options: NSLayoutFormatOptions.AlignAllLeft,
            metrics: nil,
            views: ["labelA": labelA, "labelB": labelB])
        
        
        
    }
    
}
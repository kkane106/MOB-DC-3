//
//  SecondViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit

class SecondViewController: ExerciseViewController {
    var bottomRightSquare : UIView?
    var bottomLeftSquare : UIView?
    var topLeftSquare : UIView?
    var topRightSquare : UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 2"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        /* TODO:
        Build four blue squares, 20 points wide, one in each corner of the screen. 
        They must stay in their respective corners on device rotation. 
        
        Use Autolayout.
        
        Your view should be in self.exerciseView, not self.view
        */
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
//        buildSquares()
    }
    
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("three", sender: nil)
    }
    
//    func buildSquares() {
//        buildTopLeftSquare()
//        buildTopRightSquare()
//        buildBottomLeftSquare()
//        buildBottomRightSquare()
//    }
//    
//    func buildTopLeftSquare() {
//        self.topLeftSquare = UIView()
//        self.topLeftSquare?.backgroundColor = UIColor.blueColor()
//        self.topLeftSquare?.setTranslatesAutoresizingMaskIntoConstraints(false)
//        exerciseView.addSubview(self.topLeftSquare!)
//        
//        let leftConstraint = NSLayoutConstraint(
//            item: self.topLeftSquare!,
//            attribute: NSLayoutAttribute.Left,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: exerciseView,
//            attribute: NSLayoutAttribute.Left,
//            multiplier: 1.0,
//            constant: 0
//        )
//        
//        let topConstraint = NSLayoutConstraint(
//            item: self.topLeftSquare!,
//            attribute: NSLayoutAttribute.Top,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: exerciseView,
//            attribute: NSLayoutAttribute.Top,
//            multiplier: 1.0,
//            constant: 0
//        )
//        
//        let widthConstraint = NSLayoutConstraint(
//            item: self.topLeftSquare!,
//            attribute: NSLayoutAttribute.Width,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: nil,
//            attribute: NSLayoutAttribute.NotAnAttribute,
//            multiplier: 1.0,
//            constant: rectSize
//        )
//        
//        let heightConstraint = NSLayoutConstraint(
//            item: self.topLeftSquare!,
//            attribute: NSLayoutAttribute.Height,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: nil,
//            attribute: NSLayoutAttribute.NotAnAttribute,
//            multiplier: 1.0,
//            constant: rectSize
//        )
//        
//        exerciseView.addConstraints([leftConstraint, topConstraint, heightConstraint, widthConstraint])
//        
//    }
//    
//    func buildTopRightSquare() {
//        self.topRightSquare = UIView()
//        self.topRightSquare?.backgroundColor = UIColor.blueColor()
//        self.topRightSquare?.setTranslatesAutoresizingMaskIntoConstraints(false)
//        exerciseView.addSubview(self.topRightSquare!)
//        
//        let rightConstraint = NSLayoutConstraint(
//            item: self.topRightSquare!,
//            attribute: NSLayoutAttribute.Right,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: exerciseView,
//            attribute: NSLayoutAttribute.Right,
//            multiplier: 1.0,
//            constant: 0
//        )
//        
//        let topConstraint = NSLayoutConstraint(
//            item: self.topRightSquare!,
//            attribute: NSLayoutAttribute.Top,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: exerciseView,
//            attribute: NSLayoutAttribute.Top,
//            multiplier: 1.0,
//            constant: 0
//        )
//        
//        let widthConstraint = NSLayoutConstraint(
//            item: self.topRightSquare!,
//            attribute: NSLayoutAttribute.Width,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: nil,
//            attribute: NSLayoutAttribute.NotAnAttribute,
//            multiplier: 1.0,
//            constant: rectSize
//        )
//        
//        let heightConstraint = NSLayoutConstraint(
//            item: self.topRightSquare!,
//            attribute: NSLayoutAttribute.Height,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: nil,
//            attribute: NSLayoutAttribute.NotAnAttribute,
//            multiplier: 1.0,
//            constant: rectSize
//        )
//        
//        exerciseView.addConstraints([rightConstraint, topConstraint, heightConstraint, widthConstraint])
//        
//    }
//    
//    func buildBottomRightSquare() {
//        self.bottomRightSquare = UIView()
//        self.bottomRightSquare?.backgroundColor = UIColor.blueColor()
//        self.bottomRightSquare?.setTranslatesAutoresizingMaskIntoConstraints(false)
//        exerciseView.addSubview(self.bottomRightSquare!)
//        
//        let rightConstraint = NSLayoutConstraint(
//            item: self.bottomRightSquare!,
//            attribute: NSLayoutAttribute.Right,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: exerciseView,
//            attribute: NSLayoutAttribute.Right,
//            multiplier: 1.0,
//            constant: 0
//        )
//        
//        let bottomConstraint = NSLayoutConstraint(
//            item: self.bottomRightSquare!,
//            attribute: NSLayoutAttribute.Bottom,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: exerciseView,
//            attribute: NSLayoutAttribute.Bottom,
//            multiplier: 1.0,
//            constant: 0
//        )
//        
//        let widthConstraint = NSLayoutConstraint(
//            item: self.bottomRightSquare!,
//            attribute: NSLayoutAttribute.Width,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: nil,
//            attribute: NSLayoutAttribute.NotAnAttribute,
//            multiplier: 1.0,
//            constant: rectSize
//        )
//        
//        let heightConstraint = NSLayoutConstraint(
//            item: self.bottomRightSquare!,
//            attribute: NSLayoutAttribute.Height,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: nil,
//            attribute: NSLayoutAttribute.NotAnAttribute,
//            multiplier: 1.0,
//            constant: rectSize
//        )
//        
//        exerciseView.addConstraints([rightConstraint, bottomConstraint, heightConstraint, widthConstraint])
//        
//    }
//    
//    func buildBottomLeftSquare() {
//        self.bottomLeftSquare = UIView()
//        self.bottomLeftSquare?.backgroundColor = UIColor.blueColor()
//        self.bottomLeftSquare?.setTranslatesAutoresizingMaskIntoConstraints(false)
//        exerciseView.addSubview(self.bottomLeftSquare!)
//        
//        let leftConstraint = NSLayoutConstraint(
//            item: self.bottomLeftSquare!,
//            attribute: NSLayoutAttribute.Left,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: exerciseView,
//            attribute: NSLayoutAttribute.Left,
//            multiplier: 1.0,
//            constant: 0
//        )
//        
//        let bottomConstraint = NSLayoutConstraint(
//            item: self.bottomLeftSquare!,
//            attribute: NSLayoutAttribute.Bottom,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: exerciseView,
//            attribute: NSLayoutAttribute.Bottom,
//            multiplier: 1.0,
//            constant: 0
//        )
//        
//        let widthConstraint = NSLayoutConstraint(
//            item: self.bottomLeftSquare!,
//            attribute: NSLayoutAttribute.Width,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: nil,
//            attribute: NSLayoutAttribute.NotAnAttribute,
//            multiplier: 1.0,
//            constant: rectSize
//        )
//        
//        let heightConstraint = NSLayoutConstraint(
//            item: self.bottomLeftSquare!,
//            attribute: NSLayoutAttribute.Height,
//            relatedBy: NSLayoutRelation.Equal,
//            toItem: nil,
//            attribute: NSLayoutAttribute.NotAnAttribute,
//            multiplier: 1.0,
//            constant: rectSize
//        )
//        
//        exerciseView.addConstraints([leftConstraint, bottomConstraint, heightConstraint, widthConstraint])
//        
//    }
    
//    Arthurs in-class VFL Example
    
    
}

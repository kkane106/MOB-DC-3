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
    let rectSize: CGFloat = 40
    
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
        
        //    Arthurs example --> yellow squares
        buildSquares()
        buildArthursSquares()
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("three", sender: nil)
    }
    
    func buildSquares() {
        buildTopLeftSquare()
        buildTopRightSquare()
        buildBottomLeftSquare()
        buildBottomRightSquare()
    }
    
    func buildTopLeftSquare() {
        self.topLeftSquare = UIView()
        self.topLeftSquare?.backgroundColor = UIColor.blueColor()
        self.topLeftSquare?.setTranslatesAutoresizingMaskIntoConstraints(false)
        exerciseView.addSubview(self.topLeftSquare!)
        
        let leftConstraint = NSLayoutConstraint(
            item: self.topLeftSquare!,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1.0,
            constant: 0
        )
        
        let topConstraint = NSLayoutConstraint(
            item: self.topLeftSquare!,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 0
        )
        
        let widthConstraint = NSLayoutConstraint(
            item: self.topLeftSquare!,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: rectSize
        )
        
        let heightConstraint = NSLayoutConstraint(
            item: self.topLeftSquare!,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: rectSize
        )
        
        exerciseView.addConstraints([leftConstraint, topConstraint, heightConstraint, widthConstraint])
        
    }
    
    func buildTopRightSquare() {
        self.topRightSquare = UIView()
        self.topRightSquare?.backgroundColor = UIColor.blueColor()
        self.topRightSquare?.setTranslatesAutoresizingMaskIntoConstraints(false)
        exerciseView.addSubview(self.topRightSquare!)
        
        let rightConstraint = NSLayoutConstraint(
            item: self.topRightSquare!,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1.0,
            constant: 0
        )
        
        let topConstraint = NSLayoutConstraint(
            item: self.topRightSquare!,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1.0,
            constant: 0
        )
        
        let widthConstraint = NSLayoutConstraint(
            item: self.topRightSquare!,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: rectSize
        )
        
        let heightConstraint = NSLayoutConstraint(
            item: self.topRightSquare!,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: rectSize
        )
        
        exerciseView.addConstraints([rightConstraint, topConstraint, heightConstraint, widthConstraint])
        
    }
    
    func buildBottomRightSquare() {
        self.bottomRightSquare = UIView()
        self.bottomRightSquare?.backgroundColor = UIColor.blueColor()
        self.bottomRightSquare?.setTranslatesAutoresizingMaskIntoConstraints(false)
        exerciseView.addSubview(self.bottomRightSquare!)
        
        let rightConstraint = NSLayoutConstraint(
            item: self.bottomRightSquare!,
            attribute: NSLayoutAttribute.Right,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.Right,
            multiplier: 1.0,
            constant: 0
        )
        
        let bottomConstraint = NSLayoutConstraint(
            item: self.bottomRightSquare!,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: -44
        )
        
        let widthConstraint = NSLayoutConstraint(
            item: self.bottomRightSquare!,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: rectSize
        )
        
        let heightConstraint = NSLayoutConstraint(
            item: self.bottomRightSquare!,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: rectSize
        )
        
        exerciseView.addConstraints([rightConstraint, bottomConstraint, heightConstraint, widthConstraint])
        
    }
    
    func buildBottomLeftSquare() {
        self.bottomLeftSquare = UIView()
        self.bottomLeftSquare?.backgroundColor = UIColor.blueColor()
        self.bottomLeftSquare?.setTranslatesAutoresizingMaskIntoConstraints(false)
        exerciseView.addSubview(self.bottomLeftSquare!)
        
        let leftConstraint = NSLayoutConstraint(
            item: self.bottomLeftSquare!,
            attribute: NSLayoutAttribute.Left,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1.0,
            constant: 0
        )
        
        let bottomConstraint = NSLayoutConstraint(
            item: self.bottomLeftSquare!,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: exerciseView,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: -44
        )
        
        let widthConstraint = NSLayoutConstraint(
            item: self.bottomLeftSquare!,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: rectSize
        )
        
        let heightConstraint = NSLayoutConstraint(
            item: self.bottomLeftSquare!,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: rectSize
        )
        
        exerciseView.addConstraints([leftConstraint, bottomConstraint, heightConstraint, widthConstraint])
        
    }

    func buildArthursSquares() {
        let square1 = UIView()
        square1.setTranslatesAutoresizingMaskIntoConstraints(false)
        square1.backgroundColor = .yellowColor()
        exerciseView.addSubview(square1)
        
        let square2 = UIView()
        square2.setTranslatesAutoresizingMaskIntoConstraints(false)
        square2.backgroundColor = .yellowColor()
        exerciseView.addSubview(square2)
        
        let square3 = UIView()
        square3.setTranslatesAutoresizingMaskIntoConstraints(false)
        square3.backgroundColor = .yellowColor()
        exerciseView.addSubview(square3)
        
        let square4 = UIView()
        square4.setTranslatesAutoresizingMaskIntoConstraints(false)
        square4.backgroundColor = .yellowColor()
        exerciseView.addSubview(square4)
        
//        Datasources for NSLayoutConstraint.constraintsWithVisualFormat
        let metrics = ["width" : 20, "height" : 20]
        let views =
            [
                "square1" : square1,
                "square2" : square2,
                "square3" : square3,
                "square4" : square4
            ]
        
/*
H:| ==> hug left wall i.e. horizontal constraint --> V:| would be vertical
[] ==> perform action on this view
() ==> alot this much width/height if your view is vertical
*/
        let square1WidthConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|[square1(width)]",
            options: NSLayoutFormatOptions.AlignAllLeft,
            metrics: metrics,
            views: views
        )
        
        let square1HeightConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|[square1(height)]",
            options: NSLayoutFormatOptions.AlignAllTop,
            metrics: metrics,
            views: views
        )
        
        exerciseView.addConstraints(square1HeightConstraints)
        exerciseView.addConstraints(square1WidthConstraints)
        
        let square2WidthConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:[square2(width)]|",
            options: NSLayoutFormatOptions.AlignAllRight,
            metrics: metrics,
            views: views
        )
        
        let square2HeightConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:|[square2(height)]",
            options: NSLayoutFormatOptions.AlignAllTop,
            metrics: metrics,
            views: views
        )
        
        exerciseView.addConstraints(square2HeightConstraints)
        exerciseView.addConstraints(square2WidthConstraints)

        let square3WidthConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:|[square3(width)]",
            options: NSLayoutFormatOptions.AlignAllLeft,
            metrics: metrics,
            views: views
        )
// -()- ==> Add spacing of 44 points from whichever pipe it is next to
        let square3HeightConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:[square3(height)]-(44)-|",
            options: NSLayoutFormatOptions.AlignAllBottom,
            metrics: metrics,
            views: views
        )
        
        exerciseView.addConstraints(square3HeightConstraints)
        exerciseView.addConstraints(square3WidthConstraints)

        let square4WidthConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "H:[square4(width)]|",
            options: NSLayoutFormatOptions.AlignAllRight,
            metrics: metrics,
            views: views
        )
        
        let square4HeightConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
            "V:[square4(height)]-(44)-|",
            options: NSLayoutFormatOptions.AlignAllBottom,
            metrics: metrics,
            views: views
        )
        
        exerciseView.addConstraints(square4HeightConstraints)
        exerciseView.addConstraints(square4WidthConstraints)

        
    }
    
}

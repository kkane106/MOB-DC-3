//
//  ViewController.swift
//  Lesson12CGExample
//
//  Created by Kristopher Kane on 7/13/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let squareA = UIView(frame: CGRectMake(20, 20, 80, 80))
        squareA.backgroundColor = UIColor.blackColor()
        view.addSubview(squareA)
        
        let squareBRect = CGRectMake(squareA.frame.origin.x + 100, squareA.frame.origin.y + 100, squareA.frame.width, squareA.frame.size.height)
        let squareB = UIView(frame: squareBRect)
        squareB.backgroundColor = UIColor.blueColor()
        view.addSubview(squareB)
        
        let squareCRect = CGRectMake(squareB.bounds.origin.x, squareB.bounds.origin.y, 30, 30)
        let squareC = UIView(frame: squareCRect)
        squareC.backgroundColor = UIColor.whiteColor()
        squareB.addSubview(squareC)
        
//        for v in view.subviews {
//            println(v)
//        }
    }
}


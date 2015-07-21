//
//  ThirdViewController.swift
//  ViewExercises
//
//  Created by Rudd Taylor on 9/9/14.
//  Copyright (c) 2014 Rudd Taylor. All rights reserved.
//

import UIKit
import SnapKit

class ThirdViewController: ExerciseViewController {

    let rectSize : CGFloat = 20
    var topLeftRect : UIView?
    var topRightRect : UIView?
    var bottomLeftRect : UIView?
    var bottomRightRect : UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exerciseDescription.text = "View 3"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .Plain, target: self, action: "next")
        
        doMakeTopLeftRect()
        /* TODO:
        Build four blue squres, 20 points wide, one in each corner of the screen. 
        They must stay in their respective corners on device rotation. 
        
        Use Masonry.
        
        Your view should be in self.exerciseView, not self.view
        */
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    func next() {
        self.performSegueWithIdentifier("four", sender: nil)
    }
    
    func makeRectangles() {
        
    }
    
    func doMakeTopLeftRect() {
        topLeftRect = UIView()
        topLeftRect?.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.exerciseView.snp_top)
//            make.left.equalTo(self.exerciseView.snp_left)
        }
    }

}
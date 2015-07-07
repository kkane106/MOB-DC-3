//
//  CountUpViewController.swift
//  example
//
//  Created by Kristopher Kane on 7/6/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit

protocol CountUpDelegate {
    func addOneToLabel()
    
}

class CountUpViewController: UIViewController {
    var delegate: CountUpDelegate?
    
    @IBAction func addOne(sender: UIButton) {
        delegate?.addOneToLabel()
        println("add one")
    }
    
    
    @IBAction func dismiss(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

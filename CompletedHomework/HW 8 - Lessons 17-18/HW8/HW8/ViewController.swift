//
//  ViewController.swift
//  HW8
//
//  Created by Kristopher Kane on 7/29/15.
//  Copyright (c) 2015 Kris Kane. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        task1()
//        task2()
        task3()
    }
    
    func task1() {
        Alamofire.request(.GET, "http://www.google.com")
            .response { (request,response,data,error) in
                let string = NSString(data: data!, encoding: NSUTF8StringEncoding)
                println(string)
        }
        
    }
    
    func task2() {
        Alamofire.request(.GET, "http://generalassemb.ly/foobar.baz")
            .response { (request,response,data,error) in
                if let error = error {
                    println("error:\(error)")
                    println("response: \(response)")
                } else {
                    println("no error")
                }
                
        }
    }
    
    func task3() {
        Alamofire.request(.GET, "http://api.openweathermap.org/data/2.5/weather?q=New%20York,US")
            .response { (request,response,data,error) in
                let string = NSString(data: data!, encoding: NSUTF8StringEncoding)
                println(string)
        }
    }

}


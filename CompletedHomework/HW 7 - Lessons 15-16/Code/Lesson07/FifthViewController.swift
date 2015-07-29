//
//  FifthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var stringEntryTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        let filemgr = NSFileManager.defaultManager()
            if filemgr.fileExistsAtPath("/Users/Kane/Desktop/MOB-DC-3/CompletedHomework/HW 7 - Lessons 15-16/Code/Lesson07/array.txt") {
                let path = NSBundle.mainBundle().pathForResource("array", ofType: "txt")
                var text = String(contentsOfFile: path!, encoding: NSUTF8StringEncoding, error: nil)!
                stringEntryTextView.text = text
            } else {
                println("not found")
            }
    }
    @IBAction func doSaveArray(sender: UIButton) {
        let string = stringEntryTextView.text
        let strings = split(string){$0 == " "}
        println(strings)
        
        let file: NSFileHandle? = NSFileHandle(forUpdatingAtPath: "/Users/Kane/Desktop/MOB-DC-3/CompletedHomework/HW 7 - Lessons 15-16/Code/Lesson07/array.txt")
        
        if file == nil {
            println("file failed to open")
        } else {
            let data = ("\(strings)" as NSString).dataUsingEncoding(NSUTF8StringEncoding)
            file?.truncateFileAtOffset(0)
            file?.seekToFileOffset(0)
            file?.writeData(data!)
            file?.closeFile()
        }
    }
}

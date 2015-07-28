//
//  StudentStore.swift
//  Students
//
//  Created by Kristopher Kane on 7/27/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit
import CoreData

class StudentStore {

    static let sharedStore = StudentStore()
    
    var context : NSManagedObjectContext
    
    init() {
        println("Student Store Core Data")
        
        // Get reference to app delegate
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        // get context
        context = appDelegate.managedObjectContext!
    }
    
    func addStudent(name: String, location: String) {
        let newStudent = NSEntityDescription.insertNewObjectForEntityForName("Student", inManagedObjectContext: context) as! Student
        
        newStudent.name = name
        newStudent.location = location
        
        var error: NSError?
        // must be prepended with & --> passing the error object into memory where this value would be
        context.save(&error)
        
        if error != nil {
            println("Some error")
        }
    }
    
    func getAllStudents() -> [Student] {
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
        let predicate = NSPredicate(format: "name CONTAINS %@", "a")
        let fetchRequest = NSFetchRequest(entityName: "Student")
        
        fetchRequest.sortDescriptors = [sortDescriptor]
        fetchRequest.predicate = predicate
        
        var error: NSError?
        let results = context.executeFetchRequest(fetchRequest, error: &error) as! [Student]
        
        if error != nil {
            println("some error")
        }
        
        return results
    }
    
    func removeStudent(student : Student) {
        context.deleteObject(student)
        context.save(nil)
    }
}


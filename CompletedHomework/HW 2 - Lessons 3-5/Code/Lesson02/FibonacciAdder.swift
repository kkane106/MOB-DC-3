//
//  FibonacciAdder.swift
//  Lesson02
//
//  Created by Kristopher Kane on 6/26/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import Foundation

class FibonacciAdder {
    var fibonacciIndex: Int = 0
    
    func fibonacciNumberAtIndex(indexOfFibonacciNumber: Int) {
        var current = 0, next = 1, result = 0
        for index in 0...indexOfFibonacciNumber {
            let tempVar = current
            
            current = next
            next = tempVar + current
            result = tempVar
        }
        
        fibonacciIndex = result
    }
}
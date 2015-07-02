import Foundation

// Protocol
// Non-hierarchical method of sharing attributes (think horizontal inheritance)

protocol Characteristics {
    
    var isAlive: Bool { get set }
    // you can both retrieve the information about this, and set it to something else
    
    func eat(food: String)
    
}

protocol Holidays {
    var isChristmas: Bool { get }
    func birthday(day: NSCalendar) -> Bool
}

class Human {
    
}

class Animal: Characteristics {
    func eat(food: String) {
        println("\(food)")
    }
    
    var isAlive = true
}

class Cat: Animal, Holidays {
    var isChristmas = false
    func birthday(day: NSCalendar) -> Bool {
        return false
    }
    
}

let tiger = Cat()


// Normal Class

class NormalClass {
    var h: Int?
    
    init() {
        
    }
    
}

// Define Singleton
class MySingleton {

    static let sharedInstance = MySingleton()
    var instanceVar: String?
    
    init() {
        println("singleton")
    }
    
}

let a = NormalClass()
let b = NormalClass()
// two different references to different objects of the same class
let check = (a===b)

let c = MySingleton.sharedInstance
let d = MySingleton.sharedInstance

let check2 = (c===d)

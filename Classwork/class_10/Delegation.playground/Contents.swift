// Protocol Review

protocol Automotive {
    func drive()
    func honk()
    func turnOnLight()
}

class Car: Automotive {
    func drive() {
        println("vroom vroom")
    }
    
    func honk() {
        
    }
    
    func turnOnLight() {
        
    }
}

class Train: Automotive {
    func drive() {
        println("choo choo")
    }
    
    func honk() {
        
    }
    
    func turnOnLight() {
        
    }
    
}

let bmw = Car()
bmw.drive()

let dieselEngine = Train()
dieselEngine.drive()

var vehicleArray = [Automotive]()
vehicleArray.append(bmw)
vehicleArray.append(dieselEngine)

for i in vehicleArray {
    println(i.drive())
    i.honk()
    i.turnOnLight()
}

// Delegation
// ***************** Country.swift **** /
// naming convention is class name followed by the word "delegate"
protocol CountryDelegate {
    func startAWar()
    func makePeace()
}

class Country {
    
    var delegate: SpokesPerson?
    var delegates: [SpokesPerson]?
    
    func causeProblems() {
        if let delegate = delegate {
            delegate.startAWar()
        }
        
        if let arrayOfDelegates = delegates {
            for d in arrayOfDelegates {
                d.startAWar()
            }
        }
    }
    
    func fixProblems() {
        if let delegate = delegate {
            delegate.makePeace()
        }
    }
}

// ************************************ /
class Person {
    
}

// must declare the super class first, before the protocol conformation
class SpokesPerson: Person, CountryDelegate {
    func startAWar() {
        
    }
    
    func makePeace() {
        
    }
}

let handy = SpokesPerson()
let kris = SpokesPerson()
let kate = SpokesPerson()
let france = Country()
france.delegate = handy
france.delegates = [handy, kris, kate]
france.causeProblems()
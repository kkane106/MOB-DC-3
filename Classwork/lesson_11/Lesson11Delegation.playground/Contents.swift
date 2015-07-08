/**************** Country.swift **********************/
protocol CountryDelegate { // Naming convention, class with protocol suffixed by Delegate
    func negotiate()
    
}

class Country {
    var delegate: CountryDelegate?
    
    func performNegotiation() {
        if let delegate = delegate {
            delegate.negotiate()
        }
    }
    
    
}
/******************************************************/


/************* Ambassador.swift ***********************/
// Is Delegate
class Ambassador: CountryDelegate {
    func negotiate() {
        println("blah blah blah")
    }
}

/******************************************************/

// iOS xcode 7 will autocorrect variables to constants if there is no mutation
let usa = Country()
let merkel = Ambassador()

usa.delegate = merkel

usa.performNegotiation()


// example continued
/************* LieutenantAmbassador.swift ***********************/

class Lieu: Ambassador {
    override func negotiate() {
        super.negotiate()
        println("I'll do it better")
    }
}

/****************************************************************/

let hans = Lieu()
usa.delegate = hans

usa.performNegotiation()
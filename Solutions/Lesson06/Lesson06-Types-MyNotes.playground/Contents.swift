/**************************************************/
/********************CLASS*************************/
/**************************************************/

class ReferenceTypeExample {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// Both of these constants reference the same instance of ReferenceTypeExample
let exampleA = ReferenceTypeExample(name: "Kris")
let exampleB = exampleA

exampleB.name = "Not Kris"
exampleA.name

if (exampleA === exampleB) {
    println("True")
}

func testFunc(example: ReferenceTypeExample) {
    example.name = "Luke"
}

// This is a new instance of ReferenceTypeExample
let exampleC = ReferenceTypeExample(name: "Arthur")
(exampleC === exampleA)
testFunc(exampleA)

/**************************************************/
/********************STRUCT************************/
/**************************************************/

struct ValueTypeExample {
    var name: String
}

var valueExampleA = ValueTypeExample(name: "Kris")
var valueExampleB = valueExampleA

valueExampleB.name = "Arthur"
valueExampleA

// Similar to how memory is handled with Variables
var myName = "Kris"
var yourName = myName
yourName = "Arthur"
myName
// Lesson 4 - Functions


// function named myFunction that takes no parameters--> returns no values
func myFunction() {
    println("Hello, World!")
}

myFunction()

// takes one parameter, an integer

func aMoreComplexFunction(number: Int) {
    for i in 1...number {
        println(i)
    }
    println("------------")
}

aMoreComplexFunction(5)
aMoreComplexFunction(3)

// takes two parameters

func hare(age: Int, name: String) {
    println("My name is \(name) and I am \(age) years old")
}

hare(28, "Kris")

// takes three parameters, one is optional

func functionWithOptional(age: Int, name: String, location: String?) {
    let introduction = "Hey there, my name is \(name) and I am \(age) years old"
    
    if let location = location {
        println("\(introduction) and I am from \(location)")
    } else {
        println("\(introduction)")
    }
}

functionWithOptional(28, "Kris", "DC")
functionWithOptional(28, "Kris", nil)

// using implicit returns with functions in swift

func cat(name: String) -> String {
    let sentence: String = "\(name) meows menacingly"
    return sentence
}

let myCat = cat("Scooter")
println(myCat)

// iterating with a for loop using inputs and optionals inside a function

func lastFunction(alpha: Int, beta: Int, name: String, decimal: Float?) {
    for number in alpha...beta {
        println("My name is \(name) and I have \(number) fingers!")
        if let decimal = decimal {
            println("I have $\(decimal) in the bank")
        } else {
            println("I am poor")
        }
        println("----------")
    }
}
lastFunction(1, 5, "Kris", nil)

// returning an optional --> Differed Initialization

func anotherFunction(name: String, age: Int?) -> String? {
    var statement: String?
    if let myAge = age {
        statement = "yes I was passed an age"
    } else {
        statement = "didn't get an age"
    }
    return statement
}

anotherFunction("Kris", 28)
anotherFunction("Kris", nil)
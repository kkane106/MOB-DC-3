// MOB3DC Lesson 3 Practice Playground

// Constants
let string = "Hello, World!"

// Variables
var day = "Wednesday"
day = "Tuesday"

// Practicing type setting
let age: Int = 28
let implicitAge = 28

let money: Double = 200000.01
let implicitMoney = 200000.01

let calculation: Float = 2.3
let implicitCalculation = 2.3

let name: String = "Kris Kane"
let implicitString = "Kris Kane"

let gender: Bool = false
let implicitGender = false

// A function that says Hello
let greeting: String = "Hello World!"

func sayHello() -> String {
    return greeting
}

sayHello()

//A function that says hello to a specific person based on their input

func greetUser(#userName: String) -> String {
    return "Hello \(userName)"
}

greetUser(userName: "Kris")

// Deaf Grandma
func deafGrandma(#userInput: String) -> String {
    if userInput == "I HAVE TO GO" {
        return "BYE SONNY"
    } else if userInput == userInput.uppercaseString {
        return "NO, NOT SINCE 1893"
    } else {
        return "HUH, WHAT WAS THAT?"
    }
}

deafGrandma(userInput: "HELLO")
deafGrandma(userInput: "hello")
deafGrandma(userInput: "I HAVE TO GO")
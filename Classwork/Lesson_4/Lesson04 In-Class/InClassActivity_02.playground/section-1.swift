// Playground - noun: a place where people can play
// Lesson 05

// Complete these, in order, writing code under each TODO statement. Each statement calls for a function to be written, write each of them and then immediately call it after the function definition.

// TODO: Write a function that prints out "Hello world!" 10 times
func helloWorldTenTimes() {
    var i = 1
    while i < 11 {
        println("Hello, world!")
        ++i
    }
}

helloWorldTenTimes()


// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times

func hitThisLine(numTimes: Int) {
    for num in 1...numTimes {
        println("Hit this line \(numTimes) times!")
    }
}

hitThisLine(20)

// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"

func stringFunction(someString:String) {
    println("Hello \(someString)")
}

stringFunction("Banana")

// TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"

func stringOptionalFunction(someOptional:String?) {
    if let someOptional = someOptional {
        println("Hello \(someOptional)")
    } else {
        println("Hello, world!")
    }
}

stringOptionalFunction("Banana")
stringOptionalFunction(nil)

// TODO: Write a function that takes one parameter, n, and returns an integer, the nth series in the fibonacci
// sequence. The first fibonacci number is 0, the second is 1, the third is 1, the fourth is 2, fifth is 3, sixth is 5, etc. fibonacci numbers at sequence n are the sum of the n-1 and n-2 fibonacci number.
func fibonacci(n:Int) -> Int {
    var current = 0, next = 1, result: Int = 0
    for i in 0...n {
        let tempVar = current
        
        current = next
        next = tempVar + current
        result = tempVar
    }
    return result
}

fibonacci(7)


// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.

func twentyFibonacci() {
    for i in 1...20 {
        println("\(fibonacci(i))")
    }
}

twentyFibonacci()

// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.

// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)

// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).

func tipCalculator(bill: Float, tipPercent: Float) {
    let tipAmount = bill * tipPercent
}

// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.

// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.

func linearSearch(arrayOfStrings:[String], searchTerm:String) -> Bool {
    var found: Bool = false
    for i in 0...(arrayOfStrings.count - 1) {

        if arrayOfStrings[i] == searchTerm {
            found = true
        }

    }
    return found
}

linearSearch(["banana", "apple"], "banana")



// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).
func checkPalindrome (word: String) -> Bool {
    var palindrome: Bool = false
    let forward = Array(word)
    if forward == forward.reverse() {
        palindrome = true
    }
    return palindrome
}

checkPalindrome("hannah")

// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings are equal
func stringEqualityTest (firstWord:String, secondWord:String) -> Bool {
    var equal: Bool = false
    if firstWord == secondWord {
        equal = true
    }
    return equal
}

stringEqualityTest("banana", "banana")
stringEqualityTest("banana", "apple")

// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times.

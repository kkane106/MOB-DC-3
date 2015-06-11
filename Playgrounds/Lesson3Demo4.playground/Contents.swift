// Control Flow

func isItGreaterThanZero(#number:Int) {
    if number > 5 {
        println("Yes \(number) is greater than 0")
    } else {
        println("No bananas for you...who the hell makes x equal to \(number)")
    }
}

isItGreaterThanZero(number: 10)
isItGreaterThanZero(number: 5)

let y = 0

if y > 0 {
    println("\(y) is greater than zero")
} else if y == 0 {
    println("\(y) is equal to zero")
} else {
    println("\(y) is less than zero")
}


// While loops!! Woots
//
//var z = 10
//while z > 0 {
//    println("Sup girl?")
//    --z
//}

// For in loop

for i in 1...5 {
    println("Yolo")
}

var firstNums = [1,2,3,4,5]
var solution = 0
for i in 1...firstNums.count {
    solution + firstNums[i-1]
    println("Banana \(solution)")
}
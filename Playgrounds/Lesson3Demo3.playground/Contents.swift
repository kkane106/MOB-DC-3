// Arithmetic Operators

1+1
2-1
2*2
2/2
let x: Int = 5
let y: Int = 10
x+y
y/x
x-y
y*x

func determineDivisibility(#firstNumber: Int, #secondNumber: Int) -> String {
    if firstNumber % secondNumber == 0 {
        return "Hell yeah it is"
    } else {
        return "Nope"
    }
}

determineDivisibility(firstNumber: 10, secondNumber: 5)
determineDivisibility(firstNumber: 10, secondNumber: 6)

var zope:Int = 1
++zope
--zope

var alpha = 10
++alpha
alpha = alpha + 1

var beta = 5
beta = beta - 1
--beta

alpha + beta

// Comparison Operators
[alpha, beta]
alpha == beta
alpha > beta
alpha >= beta
alpha < beta
alpha <= beta
alpha != beta


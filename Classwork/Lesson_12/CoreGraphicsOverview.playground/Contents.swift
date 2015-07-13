import UIKit

let cgWidth: CGFloat = 10.0
let width: Float = 10.0
let widthAgain = 10.0 // same as 'width'

// x, y, width, height
let point = CGPoint(x: 10, y: 10)
// This is a point, 10 points from the top and 10 points from the left
// x = east/west --> y = north/south

let size = CGSize(width: 20, height: 20)

let rect: CGRect = CGRect(x: 10, y: 10, width: 20, height: 20) // Draws a full rectangle with a 10 point margin

// HOW DO YOU ACCESS ASPECTS OF RECTANGLE?
rect.origin // --> returns x,y
rect.size // --> returns the size


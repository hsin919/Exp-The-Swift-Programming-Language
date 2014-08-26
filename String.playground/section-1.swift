// Playground - noun: a place where people can play

import UIKit

class NamedShape {
    
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        
        self.name = name
        
    }
    
    deinit {
        
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var str = "Hello, playground"

var namedShape = NamedShape(name: "class")

let testFloat: Float = 3.1415
// Test format
println(NSString(format:"%.2f", testFloat))

println("\(namedShape)")
// Print object
println("\(object_getClassName(namedShape))");
// Print class type??

if str.hasPrefix("Hello")
{
    println("str has prefix Hello")
}


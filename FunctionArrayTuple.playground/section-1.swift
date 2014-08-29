// Playground - noun: a place where people can play

import UIKit

func getGasPrices() -> (Int, Int, Int) {
    return (3, 4, 5)
}

getGasPrices()

// Variadic Parameters
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumOf(1, 2 ,3)

let tipAndTotalNamed:(tipAmt:Int, total:Int) = (4, 25)
tipAndTotalNamed.tipAmt
tipAndTotalNamed.total

//Optional Tuple Return Types
func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax([8, -6, 2, 109, 3, 71]) {
    println("min is \(bounds.min) and max is \(bounds.max)")
}

// For passing Variadic Parameters in averageOf
func sumOf(numbers: [Int]) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

func averageOf(numbers: Int...) -> Float {
    var avg = 0
    
    avg = sumOf(numbers)/numbers.count
    return Float(avg)
}

averageOf(1, 2, 3)

var emptyArray = [Double]()
emptyArray.append(12.1)
emptyArray.extend([13.1, 14])

println(emptyArray)

//External Parameter Names make the purpose of parameter more clear
func join(string s1: String, toString s2: String, withJoiner joiner: String)
    -> String {
        return s1 + joiner + s2
}
join(string: "1", toString: "2", withJoiner: "+")

// s1 & s2 is not a good variable name. we can just use Shorthand External Parameter Names
func simpleJoin(#firstString: String,
    #secondString: String,
    // External Names for Parameters with Default Values don't need hash symbol(#)
    withJoiner: String = "Loves") -> String {
    return firstString + " " + withJoiner + " " + secondString
}
//simpleJoin("first", "second", "join") // error
simpleJoin(firstString: "Nathan", secondString: "Lynn", withJoiner: "Loves")

simpleJoin(firstString: "Nathan", secondString: "Lynn")

//join(string: "1", toString: "2") // error since no default joiner


// in-outs parameters
func swapTwoInts(inout a: Int, inout b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
println("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// prints "someInt is now 107, and anotherInt is now 3"

// Function Types
var funcPointerSwap: (inout Int, inout Int) -> () = swapTwoInts


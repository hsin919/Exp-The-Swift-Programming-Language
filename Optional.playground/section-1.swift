// Playground - noun: a place where people can play

import UIKit

var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "test"

let tt = optionalName?.hasPrefix("test")

if let name = optionalName?.hasPrefix("test") {
    println("name = \(name)")
} else {
    println("optionalName: \(optionalName) has not prefix test")
}

var intString :String? = nil//"1" // test nil here

if(intString != nil)
{
    intString!.toInt() // force unwrap
}

var label: Int? = intString?.toInt()


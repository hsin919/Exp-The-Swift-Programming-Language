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

// Playground - noun: a place where people can play

import UIKit

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
7.simpleDescription
var integer:Int = 7
integer.adjust()
integer.simpleDescription

extension Double {
    var absoluteValue: Double {
        return abs(self)
    }
}

var posDouble = -17.9
posDouble.absoluteValue
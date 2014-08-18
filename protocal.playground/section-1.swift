// Playground - noun: a place where people can play

import UIKit

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

enum simpleEnum: ExampleProtocol {
    case FirstDescription
    case Second, Third
    var simpleDescription: String {
        get{
            switch self {
            case .FirstDescription:
                return "FirstDescritpion"
            case .Second:
                return "Second"
            case .Third:
                return "Third"
            default:
                return "?"
            }
        }
        
    }
  
    mutating func adjust() {
        switch self {
        case .FirstDescription:
            self = Second
        case .Second:
            self = Third
        case .Third:
            self = FirstDescription
        }
    }
}

var enumObject = simpleEnum.FirstDescription

let cDescription = enumObject.simpleDescription

enumObject.adjust()

let dDescription = enumObject.simpleDescription


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

class Circle: NamedShape {
    var radius: Double = 0.0 {
        didSet {
            
        }
    }
    init (radius: Double, name: String) {
        super.init(name: name)
        self.radius = radius
    }
    
    override func simpleDescription() -> String {
        return "A Circle with radius \(radius)."
    }
    
    func changeName(newName: String, andRadius newRadius:Double) {
        self.name = newName
        self.radius = newRadius
    }
}

func funDiffThanMethod(name: String, byDay day: String) -> String {
    return "test"
}

var circle = Circle(radius: 3.0, name: "circleName")

circle.radius

circle.name

circle.changeName("test", andRadius: 1.0)

circle.radius

circle.name

funDiffThanMethod("111", byDay: "222")

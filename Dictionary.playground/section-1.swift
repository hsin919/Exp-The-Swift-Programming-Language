// Playground - noun: a place where people can play

import UIKit

var emptyDictionary = Dictionary<String, Int>() // empty dic

emptyDictionary["one"] = 1 // add new element

println(emptyDictionary)

var weekDic: [String: Int] = ["Monday": 1, "Tuesday": 2] // init

println(weekDic)

weekDic.count

weekDic["Monday"]

weekDic["Saturday"] = 1

if let oldValue = weekDic.updateValue(6, forKey: "Saturday") {
    println("The old value for DUB was \(oldValue).")
}
// option value


// for loop dictionary
for day in weekDic.keys {
    println(day)
}

for dayValue in weekDic.values {
    println(dayValue)
}

for (key, value) in weekDic {
    println("key: \(key) value:\(value)")
}

let dayArry = [String](weekDic.keys) // fetch array

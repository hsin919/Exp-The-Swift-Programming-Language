// Playground - noun: a place where people can play

import UIKit

var shoppingList = [String]() // init empty array

shoppingList.append("meat") // add element

func checkEmpty(list: [String]) -> String{
    if list.isEmpty {
        return "The shopping list is empty."
    } else {
        return "The shopping list contain.\(list)"
    }
}

println(checkEmpty(shoppingList))

//shoppingList[1] = "fruit" // out of boundary
shoppingList += ["fruit"]

println(checkEmpty(shoppingList))

shoppingList[0] = "vega"

shoppingList[0...1] = ["dog", "cat"]

shoppingList.insert("milk", atIndex: 1)

shoppingList[0...2] = ["meat", "milk", "fruit"]

shoppingList
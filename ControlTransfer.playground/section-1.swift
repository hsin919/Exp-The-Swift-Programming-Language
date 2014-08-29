// Playground - noun: a place where people can play

import UIKit

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
for character in puzzleInput {
    switch character {
    case "a", "e", "i", "o", "u", " ":
        continue
    default:
        puzzleOutput.append(character)
    }
}
println(puzzleOutput)

let numberSymbol: Character = "三"  // Simplified Chinese for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑": // multi-value matches
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
    //fallthrough  The fallthrough keyword does not check the case conditions for the switch case that it causes execution to fall into. The fallthrough keyword simply causes code execution to move directly to the statements inside the next case (or default case) block, as in C’s standard switch statement behavior.
    

case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
case "三":
    possibleIntegerValue = 5
     // no break required
default:
    break
}
if let integerValue = possibleIntegerValue {
    println("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    println("An integer value could not be found for \(numberSymbol).")
}

var step = 0
let maxcount = 100
let luckyWin = 7
countLoop: while step < maxcount {
    switch step {
    case 7:
        break countLoop // if the break statement above did not use the countLoop label, it would break out of the switch statement, not the while statement.
    default:
        step = step + 1;
    }
}

println("Game win in \(step) steps")
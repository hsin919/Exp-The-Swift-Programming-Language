// Playground - noun: a place where people can play

import UIKit

func getGasPrices() -> (Int, Int, Int) {
    return (3, 4, 5)
}

getGasPrices()

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

let tipAndTotalNamed:(tipAmt:Int, total:Int) = (4, 25)

sumOf(1, 2 ,3)

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

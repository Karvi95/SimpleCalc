//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 4/2/16.
//  Copyright © 2016 karvi90. All rights reserved.
//

import Foundation

print("Enter an expression separated by returns:")

let firstResponse = readLine(stripNewline: true)
//switch firstResponse {
//    case firstResponse!.characters.indexOf(".") != nil :
//        let firstInput = Double(firstResponse!)
//    default:
    let firstInput = UInt.init(firstResponse!)!
//}

var operation = readLine(stripNewline: true)

func factorial(x: Int) -> UInt {
    if x == 1 {
        return 1
    } else {
        return (UInt(x) * UInt(factorial(x - 1)))
    }
}

func sum(counts: [Int]) -> UInt {
    var total = 0
    for var i = 0; i < counts.count; i++  {
        total += counts[i]
    }
    return UInt(total)
}

var result = UInt.min
var counts = [Int]()

if operation == "+" {
    let secondResponse = readLine(stripNewline: true)
    let secondInput = UInt.init(secondResponse!)!
    result = firstInput + secondInput
} else if operation == "-" {
    let secondResponse = readLine(stripNewline: true)
    let secondInput = UInt.init(secondResponse!)!
    result = firstInput - secondInput
} else if operation == "*" {
    let secondResponse = readLine(stripNewline: true)
    let secondInput = UInt.init(secondResponse!)!
    result = firstInput * secondInput
} else if operation == "/" {
    let secondResponse = readLine(stripNewline: true)
    let secondInput = UInt.init(secondResponse!)!
    result = firstInput / secondInput
} else if operation == "%" {
    let secondResponse = readLine(stripNewline: true)
    let secondInput = UInt.init(secondResponse!)!
    result = firstInput % secondInput
} else if operation == "fact" {
    result = factorial(Int(firstInput))
} else {
    counts.append(Int(firstInput))
    while operation != "count" && operation != "avg" {
        counts.append(Int(operation!)!)
        operation = readLine(stripNewline: true)
    }
    if operation == "count" {
        result = UInt(counts.count)
    }
    
    if operation == "avg" {
        let numerator = sum(counts)
        let divisor = counts.count
        
        result = UInt(numerator) / UInt(divisor)
    }
}

print("Result: \(result)")



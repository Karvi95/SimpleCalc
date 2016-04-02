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
//    case firstResponse.rangeOfString(".") != nil:
//        let firstInput = Double(firstResponse!)
//    default:
        let firstInput = Int(firstResponse!)
//}

var operation = readLine(stripNewline: true)

func factorial(x: Int) -> Int {
    if x == 1 {
        return 1
    } else {
        return x * factorial(x - 1)
    }
}

func sum(counts: [Int]) -> Int {
    var total = 0
    for var i = 0; i < counts.count; i++  {
        total += counts[i]
    }
    return total
}

var result = 0
var counts = [Int]()


if operation == "+" {
    let secondResponse = readLine(stripNewline: true)
    let secondInput = Int(secondResponse!)
    result = firstInput! + secondInput!
} else if operation == "-" {
    let secondResponse = readLine(stripNewline: true)
    let secondInput = Int(secondResponse!)
    result = firstInput! - secondInput!
} else if operation == "*" {
    let secondResponse = readLine(stripNewline: true)
    let secondInput = Int(secondResponse!)
    result = firstInput! * secondInput!
} else if operation == "/" {
    let secondResponse = readLine(stripNewline: true)
    let secondInput = Int(secondResponse!)
    result = firstInput! / secondInput!
} else if operation == "%" {
    let secondResponse = readLine(stripNewline: true)
    let secondInput = Int(secondResponse!)
    result = firstInput! % secondInput!
} else if operation == "fact"{
    result = factorial(firstInput!)
} else {
    counts.append(Int(operation!)!)
    while operation != "count" || operation != "avg" {
        operation = readLine(stripNewline: true)
        counts.append(Int(operation!)!)
    }
        
    if operation == "count" {
        result = counts.count
    }
    
    if operation == "avg" {
        let numerator = sum(counts)
        let divisor = counts.count
        
        result = numerator / divisor
    }
}
    


print("Result: \(result)")


//let operationExtended = readLine(stripNewline: true)







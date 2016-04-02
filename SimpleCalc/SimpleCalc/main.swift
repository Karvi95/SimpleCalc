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
let firstInput = Int(firstResponse!)

let operationBasic = readLine(stripNewline: true)

let secondResponse = readLine(stripNewline: true)
let secondInput = Int(secondResponse!)

var result = 0

if operationBasic == "+" {
    result = firstInput! + secondInput!
} else if operationBasic == "-" {
    result = firstInput! - secondInput!
} else if operationBasic == "*" {
    result = firstInput! * secondInput!
} else if operationBasic == "/" {
    result = firstInput! / secondInput!
} else if operationBasic == "%" {
    result = firstInput! % secondInput!
} else {
    print("")
}
print("Result: \(result)")


//let operationExtended = readLine(stripNewline: true)


func count() -> Int {
    var count = 0
    while (readLine(stripNewline: true) != nil) {
        let countResponse = readLine(stripNewline: true)
        let countInput = Int(countResponse!)
        count += countInput!
    }
    return count
}




func factorial(x: Int) -> Int {
    if x == 1 {
        return 1
    } else {
        return x * factorial(x - 1)
    }
}
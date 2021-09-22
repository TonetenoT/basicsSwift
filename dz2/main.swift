//
//  main.swift
//  dz2
//
//  Created by Vitaliy Korekhov on 12.09.2021.
//

import Foundation

var a: Float = 3
var b: Float = 3
var c = sqrt(Double(a * a + b * b))
var s = (a * b) / 2
var p = Float(sqrt(Double( a * a + b * b))) + a + b
print ("площадь = \(s)")
print ("периметр = \(p)")

var array: [Int] = []
for number in 1...100 {
    array.append(number)
    print(number)
}
func evenNumber(a: Int)   {
    if (a % 2 > 0) {
        print("число четное")
        }
    else {
        print("число не четное")
    }
    }
evenNumber(a: 23)

func divisionThree(b: Int) {
    if (b % 3 == 0) {
        print("делится на три")
    }
else {
    print("не делится на три")
    }
}
divisionThree(b: 55)



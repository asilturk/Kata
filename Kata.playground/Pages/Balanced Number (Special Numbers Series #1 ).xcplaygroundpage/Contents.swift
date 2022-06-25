//: [Previous](@previous)

import Foundation



func multiply(_ a: Double, _ b: Double) -> Double {
    a * b
}


multiply(1.2 ,2.3)

var multi: (Double, Double) -> Double = { $0 * $1 }

multi(1.2,2.3)

var mullti: (_ x: Double, _ y: Double) -> Double = { $0 * $1 }

mullti(1.12, 14.4)

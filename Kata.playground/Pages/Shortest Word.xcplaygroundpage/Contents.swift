
/// Simple, given a string of words, return the length of the shortest word(s).
///
/// String will never be empty and you do not need to account for different data types.
///
/// https://www.codewars.com/kata/57cebe1dc6fdc20c57000ac9/train/swift
/// https://developer.apple.com/documentation/foundation/nsstring/1413214-components

import Foundation

// Solution
func find_short(_ str: String) -> Int {
    return str.split(separator: " ").compactMap { String($0).count }.sorted().first ?? 0
}

// Alternative
func find_short_1(_ str: String) -> Int {
    return str.components(separatedBy: " ").map { $0.count }.min() ?? 0
}


// Alternative
func find_short_2(_ str: String) -> Int {
    let x = str.split(separator: " ")
    let y = (x)
    let z = (y)
    type(of: x)
    type(of: y)
    type(of: z)
    return (str.split(separator: " ").map { $0.count }).min() ?? 0 // not work
    return ((str.split(separator: " ")).map { $0.count }).min() ?? 0 // success
    
}


let str = "bitcoin take over the world maybe who knows perhaps"
print(find_short_2(str))

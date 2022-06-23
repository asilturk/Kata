///
/// Your task is to find the first element of an array that is not consecutive.
///
/// By not consecutive we mean not exactly 1 larger than the previous element of the array.
///
/// E.g. If we have an array [1,2,3,4,6,7,8] then 1 then 2 then 3 then 4 are all consecutive but 6 is not, so that's the first non-consecutive number.
///
/// If the whole array is consecutive then return null2.
///
/// The array will always have at least 2 elements1 and all elements will be numbers. The numbers will also all be unique and in ascending order. The numbers could be positive or negative and the first non-consecutive could be either too!
///
/// If you like this Kata, maybe try this one next: https://www.codewars.com/kata/represent-array-of-numbers-as-ranges
///
/// 1 Can you write a solution that will return null2 for both [] and [ x ] though? (This is an empty array and one with a single number and is not tested for, but you can write your own example test. )
///
/// 2
/// Swift, Ruby and Crystal: nil
/// Haskell: Nothing
/// Python, Rust, Scala: None
/// Julia: nothing
/// Nim: none(int) (See options)
///


/// Source: https://www.codewars.com/kata/58f8a3a27a5c28d92e000144/solutions/swift
/// Doc : https://developer.apple.com/documentation/swift/zip(_:_:)
///
/// Solution 1
func firstNonConsecutive_Solution1(_ arr: [Int]) -> Int? {
    for (index, item) in arr.enumerated() {
        guard  index + arr.first! == item else {
            return item
        }
    }
    return nil
}

/// Solution 2
func firstNonConsecutive_Solution2(_ arr: [Int]) -> Int? {
    guard arr.count > 2 else { return nil }

    for (i, item) in arr.enumerated() {
        if i == 0 { continue }
        if item - arr[i - 1] > 1 {
            return item
        }
    }

    return nil
}

/// Solution 3
func firstNonConsecutive_Solution3(_ arr: [Int]) -> Int? {
//    return arr.enumerated().first { item in
//        item.offset + arr.first! != item.element
//
//    }?.element
    
    return arr.enumerated().first { $0.offset + arr.first! != $0.element }?.element
}

/// Solution 4
func firstNonConsecutive_Solution4(_ arr: [Int]) -> Int? {
    let targetArray = arr.dropFirst()
    
    for (given, target) in zip(arr, targetArray) {
        guard given + 1 == target else { return target }
    }
    
    return nil
}

/// Solution 5
func firstNonConsecutive_Solution5(_ arr: [Int]) -> Int? {
    let targetArray = arr.dropFirst()
    return zip(arr, targetArray).first { (lhs, rhs) in
        lhs + 1 != rhs
    }?.1
}

/// Alternative
func firstNonConsecutive_Alternative1(_ arr: [Int]) -> Int? {
    for i in 1..<arr.count {
        if arr[i] - arr[i-1] > 1 { return arr[i] }
    }
    return nil

}

/// Alternative
func firstNonConsecutive_Alternative2(_ arr: [Int]) -> Int? {
    return zip(arr, arr.dropFirst()).first { $0 + 1 != $1 }?.1
}

/// Alternative
func firstNonConsecutive_Alternative3(_ arr: [Int]) -> Int? {
    return arr.enumerated().filter{ $0.offset + arr.first! != $0.element }.map{ $0.element }.first
}

let arr = [1,2,3,4,6,7,8]

firstNonConsecutive_Solution1(arr)
firstNonConsecutive_Solution4(arr)

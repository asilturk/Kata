

///
/// Welcome. In this kata, you are asked to square every digit of a number and concatenate them.
///
/// For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1.
///
/// Note: The function accepts an integer and returns an integer
///
/// Source: https://www.codewars.com/kata/546e2562b03326a88e000020/solutions/swift
/// Doc: https://developer.apple.com/documentation/swift/int/words-swift.struct

/// Solution
func squareDigits(_ num: Int) -> Int {
    let array = String(num).compactMap { Int(String($0)) }.map { String($0 * $0) }.joined()
    return Int(array) ?? 0
}

/// Alternatives
func squareDigits_Alternative1(_ num: Int) -> Int {
    let array = String(num).compactMap { $0.wholeNumberValue }.map { String($0 * $0) }.joined()
    return Int(array) ?? 0
}

func squareDigits_Alternative2(_ num: Int) -> Int {
    return Int(
        String(num)
            .compactMap { $0.wholeNumberValue }
            .map { String($0 * $0) }
            .joined()
    )!
}

func squareDigits_Alternative3(_ num: Int) -> Int {
    return Int(
        String(num)
            .compactMap (\.wholeNumberValue)
            .map{ String($0 * $0) }
            .joined()
    )!
}

func squareDigits_Alternative4(_ num: Int) -> Int {
    return Int(
        String(num)
            .compactMap (\.wholeNumberValue)
            .map{ String($0 * $0) }
            .reduce("", +)
    )!
    
}

func squareDigits_Alternative5(_ num: Int) -> Int {
    return Int(
        String(num)
            .compactMap { String($0.wholeNumberValue! * $0.wholeNumberValue!) }
            .joined()
    )!
    
}




//squareDigits(9119)
squareDigits_Alternative5(9115)

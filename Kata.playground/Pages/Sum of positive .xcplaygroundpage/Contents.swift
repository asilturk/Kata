/// You get an array of numbers, return the sum of all of the positives ones.
///
/// Example [1,-4,7,12] => 1 + 7 + 12 = 20
///
/// Note: if there is nothing to sum, the sum is default to 0.
///
///
/// Source : https://www.codewars.com/kata/5715eaedb436cf5606000381/train/swift

func sumOfPositives (_ numbers: [Int] ) -> Int {
    
    // Solution
    return numbers.filter { $0 > 0 }.reduce(0, +)
    
    // Alternatives
    return numbers.reduce (0) {$0 + max($1, 0)}
    return numbers.lazy.filter { $0 > 0 }.reduce(0, +)
    return numbers.reduce(0, { $0 + ($1 < 0 ? 0 : $1) })
    return numbers.reduce(0) { $1 >= 0 ? $0 + $1 : $0 }
    
}


sumOfPositives([1,-4,7,12])

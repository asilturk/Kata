///
///Challenge:
///
///Given a two-dimensional array of integers, return the flattened version of the array with all the integers in the sorted (ascending) order.
///
///Example:
///
///Given [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]], your function should return [1, 2, 3, 4, 5, 6, 7, 8, 9].
///

import Foundation

func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
    
    /// Solution
    return arr.flatMap { $0 }.sorted()
    
    /// Alternatives
    return arr.joined().sorted()
    return arr.reduce([T](), +).sorted()
    return arr.reduce([], {a, b in a + b}).sorted()
    
}

flattenAndSort([[3, 2, 1], [4, 6, 5], [], [9, 7, 8]])

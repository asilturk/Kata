
import Foundation

let romans: [String: Int] = [
"I": 1,
"V": 5,
"X": 10,
"L": 50,
"C": 100,
"D": 500,
"M": 1000,
"CM": 900,
"CD": 400,
"XC": 90,
"XL": 40,
"IX": 9,
"IV": 4
]

class Solution {
    func romanToInt(_ s: String) -> Int {
        return 0
    }
}

let s = Solution()
s.romanToInt("LVIII")


var dummy =  [
    "I",
    "V",
    "X",
    "L",
    "C",
    "D",
    "M"
]

//print(dummy.dropFirst(2))
print(dummy.prefix(2))
print(dummy)

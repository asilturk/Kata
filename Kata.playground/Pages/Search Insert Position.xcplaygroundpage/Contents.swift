/**
 https://leetcode.com/problems/search-insert-position/
 
 Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

 You must write an algorithm with O(log n) runtime complexity.

  

 Example 1:

 Input: nums = [1,3,5,6], target = 5
 Output: 2
 Example 2:

 Input: nums = [1,3,5,6], target = 2
 Output: 1
 Example 3:

 Input: nums = [1,3,5,6], target = 7
 Output: 4
 
 */

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        var pivot = 0
        
        while left <= right {
            pivot = (left + right) / 2
            var middle = nums[pivot]
            
            if target == middle {
                return pivot
            }
            
            if target > middle {
                left = pivot + 1
            }
            
            if target < middle {
                right = pivot - 1
            }
        }
        
        return left
    }
}

let array = [1,3,5,6,12,51,612]
let s = Solution()
let result = s.searchInsert(array, 90)
print(result)

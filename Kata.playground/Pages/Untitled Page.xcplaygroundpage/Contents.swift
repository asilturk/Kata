
// https://leetcode.com/problems/container-with-most-water/
/*
You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

Find two lines that together with the x-axis form a container, such that the container contains the most water.

Return the maximum amount of water a container can store.

Notice that you may not slant the container.


Example 1:


Input: height = [1,8,6,2,5,4,8,3,7]
Output: 49
Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.
Example 2:

Input: height = [1,1]
Output: 1
*/
import Foundation

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        
        guard height.count > 2 else {
            return (height.first ?? 0) * (height.last ?? 0)
        }
        
        var maxValue = 0
        var distance = 1
        
        for i in 0..<height.count {
            for (j, item) in height.enumerated() {
                if j < i { continue }
                let minValue = min(item, height[i])
                let dist = j - i
                let result = minValue * minValue * dist
                if result > maxValue {
                    maxValue = result
                    distance = dist
                }
            }
        }
        
        return maxValue / distance
    }
}

let array = [4,3,2,1,4]

class Solution_Alternative1 {
    func maxArea(_ height: [Int]) -> Int {
        var start = 0
        var end = height.count - 1
        var area = 0
        while start < end {
            let h = min(height[start], height[end])
            area = max((h * (end - start)), area)
            height[start] <= height[end] ? (start += 1) : (end -= 1)
        }
        return area
    }
}

class Solution_Alternative2 {
    
    func maxArea(_ height: [Int]) -> Int {
        var max = 0
        var left = 0, right = height.count - 1
        while left != right {
            let area = min(height[left], height[right]) * (right-left)
            if max < area {
                max = area
            }
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return max
    }
}
 

Solution().maxArea(array)

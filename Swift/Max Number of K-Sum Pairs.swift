// https://leetcode.com/problems/max-number-of-k-sum-pairs/?envType=study-plan-v2&envId=leetcode-75

/*
You are given an integer array nums and an integer k.

In one operation, you can pick two numbers from the array whose sum equals k and remove them from the array.

Return the maximum number of operations you can perform on the array.
*/

// Using dictionary
class Solution {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums
        var freqDict: [Int: Int] = [:]
        var counter = 0
        
        for n in nums {
            let diff = k - n
            
            if let val = freqDict[diff], val > 0 {
                counter += 1
                freqDict[diff]! -= 1
            } else {
                freqDict[n, default: 0] += 1
            }
        }
        
        return counter
    }
}

// Using two pointers
class Solution {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums.sorted()
        var left = 0
        var right = nums.count - 1
        var counter = 0
        
        while left < right {
            let sum = nums[left] + nums[right]
            
            if sum == k {
                counter += 1
                left += 1
                right -= 1
            } else if sum < k {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return counter
    }
}
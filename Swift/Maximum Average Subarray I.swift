// https://leetcode.com/problems/maximum-average-subarray-i/?envType=study-plan-v2&envId=leetcode-75

/*
You are given an integer array nums consisting of n elements, and an integer k.

Find a contiguous subarray whose length is equal to k that has the maximum average value and return this value. Any answer with a calculation error less than 10-5 will be accepted.
*/

// Sliding window approach

class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var windowSum = nums[0..<k].reduce(0, +)
        
        var maxSum = windowSum

        for i in 0..<(nums.count - k) {
            windowSum = windowSum - nums[i] + nums[i+k]
            maxSum = max(windowSum, maxSum)
        }

        return Double(maxSum) / Double(k)
    }
}

print(Solution().findMaxAverage([1,12,-5,-6,50,3], 4))
print(Solution().findMaxAverage([5], 1))
// https://leetcode.com/problems/longest-subarray-of-1s-after-deleting-one-element/?envType=study-plan-v2&envId=leetcode-75

/*
Given a binary array nums, you should delete one element from it.

Return the size of the longest non-empty subarray containing only 1's in the resulting array. Return 0 if there is no such subarray.
*/

class Solution {
    func longestSubarray(_ nums: [Int]) -> Int {
        var zerosCount = 0
        var left = 0
        var right = 0
        var maxLength = 0

        while right < nums.count {
            if nums[right] == 0 {
                zerosCount += 1
            }

            while zerosCount > 1 {
                if nums[left] == 0 {
                    zerosCount -= 1
                }
                left += 1
            }

            maxLength = max(maxLength, right - left)
            right += 1
        }

        return maxLength
    }
}
// https://leetcode.com/problems/max-consecutive-ones-iii/?envType=study-plan-v2&envId=leetcode-75

/*
Given a binary array nums and an integer k, return the maximum number of consecutive 1's in the array if you can flip at most k 0's.
*/

class Solution {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var left = 0
        var right = 0
        var maxOnes  = 0
        var zeroCount = 0

        while right < nums.count {
            if nums[right] == 0 {
                zeroCount += 1
            }

            while zeroCount > k {
                if nums[left] == 0 {
                    zeroCount -= 1
                }
                left += 1
            }

            maxOnes = max(maxOnes, right - left + 1)

            right += 1
        }


        return maxOnes
    }
}
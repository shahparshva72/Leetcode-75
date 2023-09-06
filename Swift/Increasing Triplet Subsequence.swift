// https://leetcode.com/problems/increasing-triplet-subsequence/?envType=study-plan-v2&envId=leetcode-75

/*
Given an integer array nums, return true if there exists a triple of indices (i, j, k) such that i < j < k and nums[i] < nums[j] < nums[k]. If no such indices exists, return false.
*/

class Solution {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        var i = Int.max
        var j = Int.max

        for n in nums {
            if i >= n {
                i = n
            } else if j >= n {
                j = n
            } else {
                return true
            }
        }

        return false
    }
}
// https://leetcode.com/problems/house-robber/description/?envType=study-plan-v2&envId=leetcode-75

/*
You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security systems connected and it will automatically contact the police if two adjacent houses were broken into on the same night.

Given an integer array nums representing the amount of money of each house, return the maximum amount of money you can rob tonight without alerting the police.
*/

class Solution {
    func rob(_ nums: [Int]) -> Int {
        
        guard nums.count > 2 else {
            return nums.max()!
        }
        
        var result = Array(repeating: 0, count: nums.count)
        result[0] = nums[0]
        result[1] = max(nums[0], nums[1])
        
        for i in 2..<result.count {
            result[i] = max(nums[i]+result[i-2], result[i-1])
        }
        
        return result.last!
    }
}
// https://leetcode.com/problems/product-of-array-except-self/description/?envType=study-plan-v2&envId=leetcode-75

/*
Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.
*/

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var result = Array(repeating: 0, count: n)
        
        var leftProduct = 1
        for i in 0..<n {
            result[i] = leftProduct
            leftProduct *= nums[i]
        }

        var rightProduct = 1
        for i in (0..<n).reversed() {
            result[i] *= rightProduct
            rightProduct *= nums[i]
        }

        return result
    }
}

print(Solution().productExceptSelf([1,2,3,4]))
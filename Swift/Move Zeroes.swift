// https://leetcode.com/problems/move-zeroes/?envType=study-plan-v2&envId=leetcode-75

/*
Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Note that you must do this in-place without making a copy of the array.
*/

func moveZeroes(_ nums: inout [Int]) {
    var nonZeroIdx = 0

    for curr in 0..<nums.count {
        if nums[curr] != 0 {
            nums.swapAt(curr, nonZeroIdx)
            nonZeroIdx += 1
        }
    }
}

var arr = [0,1,0,3,12]
moveZeroes(&arr)
print(arr)
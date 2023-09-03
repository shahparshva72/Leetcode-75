// https://leetcode.com/problems/single-number/?envType=study-plan-v2&envId=leetcode-75

/*
Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

You must implement a solution with a linear runtime complexity and use only constant extra space.
*/

/*
Old Solution

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        
        var countDict  = [Int: [Int]]()
        
        for n in nums {
            countDict[n, default: [Int]()].append(n)
        }
        
        for (key, value) in countDict {
            if countDict[key]!.count == 1 {
                return key
            }
        }
        
        return 0
    }
}
*/

// Optimized using XOR
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for num in nums {
            result ^= num
        }
        return result
    }
}

print(Solution().singleNumber([2, 2, 1]))
print(Solution().singleNumber([4,1,2,1,2]))
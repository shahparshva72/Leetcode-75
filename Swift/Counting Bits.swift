// https://leetcode.com/problems/counting-bits/?envType=study-plan-v2&envId=leetcode-75

/*
Given an integer n, return an array ans of length n + 1 such that for each i (0 <= i <= n), ans[i] is the number of 1's in the binary representation of i.
*/

class Solution {
    func countBits(_ n: Int) -> [Int] {
        var result = Array(repeating: 0, count: n+1)

        for i in 1...n {
            if i % 2 == 0 {
                result[i] = result[i >> 1]
            } else {
                result[i] = result[i - 1] + 1
            }
        }

        return result
    }
}

print(Solution().countBits(2))
print(Solution().countBits(5))
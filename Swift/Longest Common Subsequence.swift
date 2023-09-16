// https://leetcode.com/problems/longest-common-subsequence/description/?envType=study-plan-v2&envId=leetcode-75

/*
Given two strings text1 and text2, return the length of their longest common subsequence. If there is no common subsequence, return 0.

A subsequence of a string is a new string generated from the original string with some characters (can be none) deleted without changing the relative order of the remaining characters.

For example, "ace" is a subsequence of "abcde".
A common subsequence of two strings is a subsequence that is common to both strings.
*/

// Time complexity: O(m x n)

class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        let t1 = Array(text1)
        let t2 = Array(text2)
        var gridDP = Array(repeating: Array(repeating: 0, count: text2.count+1), count: text1.count+1)
        

        
        for i in 1...t1.count {
            for j in 1...t2.count {
                if t1[i-1] == t2[j-1] {
                    gridDP[i][j] = 1 + gridDP[i-1][j-1]
                } else {
                    gridDP[i][j] = max(gridDP[i][j-1], gridDP[i-1][j])
                }
            }
        }  
                
        return gridDP.last!.last!
    }
}
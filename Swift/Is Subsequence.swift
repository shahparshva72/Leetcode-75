// https://leetcode.com/problems/is-subsequence/description/?envType=study-plan-v2&envId=leetcode-75

/*
Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).
*/

/*
Old Solution

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var i = 0
        var j = 0

        let arrS = Array(s)
        let arrT = Array(t)

        while i < s.count && j < t.count {
            if arrS[i] == arrT[j] {
                i += 1
            }

            j += 1
        }

        return i == s.count
    }
}
*/

// Optimized version - Break early if all characters in string S are found. 
class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var i = 0
        let arrS = Array(s)
        let arrT = Array(t)

        for char in arrT {
            if i == arrS.count {
                break
            }
            if arrS[i] == char {
                i += 1
            }
        }

        return i == arrS.count
    }
}

print(Solution().isSubsequence("abc", "ahbgdc"))
print(Solution().isSubsequence("axc", "ahbgdc"))

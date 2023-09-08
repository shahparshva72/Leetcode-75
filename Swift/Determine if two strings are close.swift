// https://leetcode.com/problems/determine-if-two-strings-are-close/?envType=study-plan-v2&envId=leetcode-75

/*
Two strings are considered close if you can attain one from the other using the following operations:

Operation 1: Swap any two existing characters.
For example, abcde -> aecdb
Operation 2: Transform every occurrence of one existing character into another existing character, and do the same with the other character.
For example, aacabb -> bbcbaa (all a's turn into b's, and all b's turn into a's)
You can use the operations on either string as many times as necessary.

Given two strings, word1 and word2, return true if word1 and word2 are close, and false otherwise.
*/

class Solution {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        var wordDict: [Character: Int] = [:]
        var wordDict2: [Character: Int] = [:]

        for char in word1 {
            wordDict[char, default: 0] += 1
        }

        for char in word2 {
            wordDict2[char, default: 0] += 1
        }

        if wordDict.keys.sorted() != wordDict2.keys.sorted() {
            return false
        }

        let word1Values = Array(wordDict.values).sorted()
        let word2Values = Array(wordDict2.values).sorted()

        return word1Values == word2Values
    }
}

let solution = Solution()
print(solution.closeStrings("abc", "bca"));  // true
print(solution.closeStrings("abc", "bac"));  // true
print(solution.closeStrings("aabbcc", "ccbbdd"));  // false
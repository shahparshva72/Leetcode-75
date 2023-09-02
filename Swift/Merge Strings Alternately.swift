// https://leetcode.com/problems/merge-strings-alternately/?envType=study-plan-v2&envId=leetcode-75

/*
You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

Return the merged string.
*/

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var result = ""
    var i = 0
    var j = 0

    while i < word1.count || j < word2.count {
        if i < word1.count {
            result.append(word1[word1.index(word1.startIndex, offsetBy: i)])
            i += 1
        }
        if j < word2.count {
            result.append(word2[word2.index(word2.startIndex, offsetBy: j)])
            j += 1
        }
    }

    return result
}

print(mergeAlternately("abc", "pqr"))
print(mergeAlternately("ab", "pqrs"))
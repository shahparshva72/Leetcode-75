// https://leetcode.com/problems/maximum-number-of-vowels-in-a-substring-of-given-length/?envType=study-plan-v2&envId=leetcode-75

/*
Given a string s and an integer k, return the maximum number of vowel letters in any substring of s with length k.

Vowel letters in English are 'a', 'e', 'i', 'o', and 'u'.
*/

class Solution {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        var maxVowelCount = 0
        var currentVowelCount = 0
        let sArray = Array(s)
        
        for i in 0..<k {
            if "aeiou".contains(sArray[i]) {
                currentVowelCount += 1
            }
        }

        maxVowelCount = currentVowelCount
        
        for i in k..<sArray.count {
            if "aeiou".contains(sArray[i]) {
                currentVowelCount += 1
            }
            if "aeiou".contains(sArray[i - k]) {
                currentVowelCount -= 1
            }
            
            maxVowelCount = max(maxVowelCount, currentVowelCount)
        }
        
        return maxVowelCount
    }
}

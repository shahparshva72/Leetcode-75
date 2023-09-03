// https://leetcode.com/problems/reverse-vowels-of-a-string/?envType=study-plan-v2&envId=leetcode-75

/*
Given a string s, reverse only all the vowels in the string and return it.

The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.
*/

func reverseVowels(_ s: String) -> String {
    var left = 0
    var right = s.count - 1
    var sArr = Array(s)

    while left < right {
        if isVowel(sArr[left]) && isVowel(sArr[right]) {
            sArr.swapAt(left, right)
            left += 1
            right -= 1
        } else if isVowel(sArr[left]) {
            right -= 1
        } else if isVowel(sArr[right]) {
            left += 1
        } else {
            left += 1
            right -= 1
        }
    }

    return String(sArr)
}

func isVowel(_ s: Character) -> Bool {
    return "aeiouAEIOU".contains(s)
}

print(reverseVowels("hello"))
print(reverseVowels("leetcode"))
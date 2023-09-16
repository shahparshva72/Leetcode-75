// https://leetcode.com/problems/letter-combinations-of-a-phone-number/description/?envType=study-plan-v2&envId=leetcode-75

/*
Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.

A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters
*/

class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        let phoneDict: [Int: [String]] = [
            2: ["a", "b", "c"],
            3: ["d", "e", "f"],
            4: ["g", "h", "i"],
            5: ["j", "k", "l"],
            6: ["m", "n", "o"],
            7: ["p", "q", "r", "s"],
            8: ["t", "u", "v"],
            9: ["w", "x", "y", "z"]
        ]

        var result: [String] = []

        for digit in digits {
            let digitInt = Int(String(digit))!

            if result.isEmpty {
                result = phoneDict[digitInt]!
            } else {
                var temp: [String] = []

                for char in phoneDict[digitInt]! {
                    for str in result {
                        temp.append(str + char)
                    }
                }

                result = temp
            }
        }

        return result
    }
}

// Bactracking approach: 

class Solution {
    private let phoneDict: [Character: [String]] = [
        "2": ["a", "b", "c"],
        "3": ["d", "e", "f"],
        "4": ["g", "h", "i"],
        "5": ["j", "k", "l"],
        "6": ["m", "n", "o"],
        "7": ["p", "q", "r", "s"],
        "8": ["t", "u", "v"],
        "9": ["w", "x", "y", "z"]
    ]

    func letterCombinations(_ digits: String) -> [String] {
        guard !digits.isEmpty else {
            return []
        }

        var result = [String]()
        backtrack("", digits, &result)
        return result
    }

    func backtrack(_ combination: String, _ nextDigits: String, _ result: inout [String]) {
        if nextDigits.isEmpty {
            result.append(combination)
        } else {
            let digit = nextDigits.first!
            for letter in phoneDict[digit]! {
                backtrack(combination + letter, String(nextDigits.dropFirst()), &result)
            }
        }
    }
}

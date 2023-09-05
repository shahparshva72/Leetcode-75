// https://leetcode.com/problems/unique-number-of-occurrences/?envType=study-plan-v2&envId=leetcode-75 

/*
Given an array of integers arr, return true if the number of occurrences of each value in the array is unique or false otherwise.
*/

class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var resultDict: [Int: Int] = [:]

        for a in arr {
            resultDict[a, default: 0] += 1
        }

        return resultDict.values.count == Set(resultDict.values).count
    }
}

print(Solution().uniqueOccurrences([1,2,2,1,1,3]))
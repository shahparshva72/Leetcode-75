// https://leetcode.com/problems/find-the-difference-of-two-arrays/?envType=study-plan-v2&envId=leetcode-75

/*
Given two 0-indexed integer arrays nums1 and nums2, return a list answer of size 2 where:
	•	answer[0] is a list of all distinct integers in nums1 which are not present in nums2.
	•	answer[1] is a list of all distinct integers in nums2 which are not present in nums1.
Note that the integers in the lists may be returned in any order.
*/

class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        let set1 = Set(nums1)
        let set2 = Set(nums2)
        var result: [[Int]] = [[], []]

        for n in set1 {
            if !set2.contains(n) {
                result[0].append(n)
            }
        }

        for n in set2 {
            if !set1.contains(n) {
                result[1].append(n)
            }
        }

        return result
    }
}

print(Solution().findDifference([1,2,3], [2,4,6]))
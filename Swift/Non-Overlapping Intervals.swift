// https://leetcode.com/problems/non-overlapping-intervals/?envType=study-plan-v2&envId=leetcode-75

/*
Given an array of intervals intervals where intervals[i] = [starti, endi], return the minimum 
number of intervals you need to remove to make the rest of the intervals non-overlapping.
*/

class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        var intervals = intervals.sorted { $0[1] < $1[1] }

        var end = intervals[0][1]
        var counter = 0

        for i in 1..<intervals.count {
            if intervals[i][0] < end {
                counter += 1
            } else {
                end = intervals[i][1]
            }
        }

        return counter
    }
}
// https://leetcode.com/problems/daily-temperatures/?envType=study-plan-v2&envId=leetcode-75

/*
Given an array of integers temperatures represents the daily temperatures, return an array answer such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature. If there is no future day for which this is possible, keep answer[i] == 0 instead.
*/

class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var answers: [Int] = Array(repeating: 0, count: temperatures.count)
        var stack: [Int] = []

        for (i, v) in temperatures.enumerated() {
            while !stack.isEmpty && temperatures[stack.last!] < v {
                let idx = stack.removeLast()
                // Calculate the difference between indexes to find number of days to wait for warmer temperature
                answers[idx] = i - idx
            }

            stack.append(i)
        }

        return answers
    }
}
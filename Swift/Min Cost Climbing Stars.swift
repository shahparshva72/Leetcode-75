// https://leetcode.com/problems/min-cost-climbing-stairs/submissions/784103522/?envType=study-plan-v2&envId=leetcode-75

/*
You are given an integer array cost where cost[i] is the cost of ith step on a staircase. Once you pay the cost, you can either climb one or two steps.

You can either start from the step with index 0, or the step with index 1.

Return the minimum cost to reach the top of the floor.
*/

class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var result = Array(repeating: 0, count: cost.count)
        result[0] = cost[0]
        result[1] = cost[1]
        
        for i in 2..<cost.count {
            result[i] = cost[i] + min(result[i-1], result[i-2])
        }
        
        return min(result[result.count-1], result[result.count-2])
        
    }
}
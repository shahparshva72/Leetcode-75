// https://leetcode.com/problems/number-of-provinces/?envType=study-plan-v2&envId=leetcode-75

/*
There are n cities. Some of them are connected, while some are not. If city a is connected directly with city b, and city b is connected directly with city c, then city a is connected indirectly with city c.

A province is a group of directly or indirectly connected cities and no other cities outside of the group.

You are given an n x n matrix isConnected where isConnected[i][j] = 1 if the ith city and the jth city are directly connected, and isConnected[i][j] = 0 otherwise.

Return the total number of provinces.
*/

class Solution {
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        var matrix = isConnected
        var provinceCount = 0
        
        for i in 0..<matrix.count {
            if matrix[i][i] == 1 {
                provinceCount += 1
                dfs(i, &matrix)
            }
        }
                
        return provinceCount
    }
    
    func dfs(_ city: Int, _ matrix: inout [[Int]]) {
        for j in 0..<matrix[city].count {
            if matrix[city][j] == 1 {
                matrix[city][j] = 0
                matrix[j][city] = 0
                dfs(j, &matrix)
            }
        }
    }
}

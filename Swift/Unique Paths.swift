// https://leetcode.com/problems/unique-paths/description/?envType=study-plan-v2&envId=leetcode-75

/*
There is a robot on an m x n grid. The robot is initially located at the top-left corner (i.e., grid[0][0]). The robot tries to move to the bottom-right corner (i.e., grid[m - 1][n - 1]). The robot can only move either down or right at any point in time.

Given the two integers m and n, return the number of possible unique paths that the robot can take to reach the bottom-right corner.

The test cases are generated so that the answer will be less than or equal to 2 * 10^9.
*/

class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {        
        var grid = Array(repeating: Array(repeating: 1, count: n), count: m)
        
        for i in 1..<m {
            for j in 1..<n {
                grid[i][j] = (grid[i-1][j] + grid[i][j-1])
            }
        }
                
        return grid.last!.last!
    }
}

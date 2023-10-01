// https://leetcode.com/problems/equal-row-and-column-pairs/?envType=study-plan-v2&envId=leetcode-75

/*

Given a 0-indexed n x n integer matrix grid, return the number of pairs (ri, cj) such that row ri and column cj are equal.

A row and column pair is considered equal if they contain the same elements in the same order (i.e., an equal array).
*/

class Solution {
    func equalPairs(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var equalPairs = 0

        for i in 0..<n {
            for j in 0..<n {

                var isEqual = true
                for k in 0..<n {
                    if grid[i][k] != grid[k][j] {
                        isEqual = false
                        break
                    }
                }

                if isEqual {
                    equalPairs += 1
                }
            }
        }

        return equalPairs
    }
}
// https://leetcode.com/problems/find-the-highest-altitude/?envType=study-plan-v2&envId=leetcode-75

/*
There is a biker going on a road trip. The road trip consists of n + 1 points at different altitudes. The biker starts his trip on point 0 with altitude equal 0.

You are given an integer array gain of length n where gain[i] is the net gain in altitude between points i​​​​​​ and i + 1 for all (0 <= i < n). Return the highest altitude of a point.
*/

class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var curr = 0
        var maxAlt = 0

        for g in gain {
            curr +=  g
            maxAlt = max(curr, maxAlt)
        }

        return maxAlt
    }
}

print(Solution().largestAltitude([-5,1,5,0,-7]))
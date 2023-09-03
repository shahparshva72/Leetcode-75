// https://leetcode.com/problems/container-with-most-water/?envType=study-plan-v2&envId=leetcode-75

/*
You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

Find two lines that together with the x-axis form a container, such that the container contains the most water.

Return the maximum amount of water a container can store.

Notice that you may not slant the container.
*/

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var low = 0
        var high = height.count - 1
        var maxWater = 0


        while low < high {
            let minHeight = min(height[low], height[high])

            let width = high - low

            maxWater = max(maxWater, width * minHeight)

            if height[low] < height[high] {
                low += 1
            } else {
                high -= 1
            }
        }

        return maxWater
    }
}
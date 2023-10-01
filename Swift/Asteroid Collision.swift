// https://leetcode.com/problems/asteroid-collision/?envType=study-plan-v2&envId=leetcode-75

/*
We are given an array asteroids of integers representing asteroids in a row.

For each asteroid, the absolute value represents its size, and the sign represents its direction (positive meaning right, negative meaning left). Each asteroid moves at the same speed.

Find out the state of the asteroids after all collisions. If two asteroids meet, the smaller one will explode. If both are the same size, both will explode. Two asteroids moving in the same direction will never meet.
*/

class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack: [Int] = []

        for asteroid in asteroids {
            if stack.isEmpty || asteroid > 0 {
                stack.append(asteroid)
            } else {
                var exploded = false
                while !stack.isEmpty && stack.last! > 0 {
                    let topAsteroid = stack.removeLast()
                    if abs(topAsteroid) == abs(asteroid) {
                        exploded = true
                        break
                    } else if abs(topAsteroid) > abs(asteroid) {
                        stack.append(topAsteroid)
                        exploded = true
                        break
                    }
                }

                if !exploded {
                    stack.append(asteroid)
                }
            }
        }

        return stack
    }
}

print(Solution().asteroidCollision([8, -8]))
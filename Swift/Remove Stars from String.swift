// https://leetcode.com/problems/removing-stars-from-a-string/?envType=study-plan-v2&envId=leetcode-75

/*
You are given a string s, which contains stars *.

In one operation, you can:

Choose a star in s.
Remove the closest non-star character to its left, as well as remove the star itself.
Return the string after all stars have been removed.

Note:

The input will be generated such that the operation is always possible.
It can be shown that the resulting string will always be unique.
*/

class Solution {
    func removeStars(_ s: String) -> String {
        var stack: [Character] = []

        for c in s {
            if c == "*" {
                if !stack.isEmpty {
                    stack.removeLast()
                }
            } else {
                stack.append(c)
            }
        }

        return String(stack)
    }
}

print(Solution().removeStars("leet**cod*e"))
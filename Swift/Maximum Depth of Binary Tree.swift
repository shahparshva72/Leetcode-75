// https://leetcode.com/problems/maximum-depth-of-binary-tree/description/?envType=study-plan-v2&envId=leetcode-75

/*
Given the root of a binary tree, return its maximum depth.

A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
*/

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }

        let leftChild = root!.left
        let rightChild = root!.right

        return 1 + max(maxDepth(leftChild), maxDepth(rightChild))
    }
}

/*
Tree of 

    1
   / \
  2   3
 / \
4   5
*/


let node4 = TreeNode(4)
let node5 = TreeNode(5)
let node2 = TreeNode(2)
node2.left = node4
node2.right = node5
let node3 = TreeNode(3)
let root = TreeNode(1)
root.left = node2
root.right = node3

let solution = Solution()
let depth = solution.maxDepth(root)
print(depth)

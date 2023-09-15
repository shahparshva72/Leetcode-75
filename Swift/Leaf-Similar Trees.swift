// https://leetcode.com/problems/leaf-similar-trees/?envType=study-plan-v2&envId=leetcode-75

class TreeNode {
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
    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        var leaves1 = [Int]()
        var leaves2 = [Int]()

        getLeaves(root1, &leaves1)
        getLeaves(root2, &leaves2)

        return leaves1 == leaves2
    }

    func getLeaves(_ root: TreeNode?, _ leaves: inout [Int]) {
        guard let root = root else { return }
        
        if root.left == nil && root.right == nil {
            leaves.append(root.val)
        }
        
        getLeaves(root.left, &leaves)
        getLeaves(root.right, &leaves)
    }
}

let tree1 = TreeNode(1)
tree1.left = TreeNode(2)
tree1.right = TreeNode(3)
tree1.left?.left = TreeNode(4)
tree1.left?.right = TreeNode(5)
tree1.left?.left?.left = TreeNode(6)
tree1.left?.left?.right = TreeNode(7)

let tree2 = TreeNode(1)
tree2.left = TreeNode(2)
tree2.right = TreeNode(3)
tree2.left?.left = TreeNode(4)
tree2.left?.right = TreeNode(5)
tree2.left?.left?.left = TreeNode(6)
tree2.left?.left?.right = TreeNode(7)

print(Solution().leafSimilar(tree1, tree2))
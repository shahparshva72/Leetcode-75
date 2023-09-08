// https://leetcode.com/problems/reverse-linked-list/?envType=study-plan-v2&envId=leetcode-75

// Given the head of a singly linked list, reverse the list, and return the reversed list

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var resultNode: ListNode?
        var current: ListNode? = head

        while current != nil {
            let temp = current?.next
            current?.next = resultNode
            resultNode = current
            current = temp
        }

        return resultNode
    }
}

let node3 = ListNode(3)
let node2 = ListNode(2, node3)
let head = ListNode(1, node2)

let solution = Solution()
let reversedHead = solution.reverseList(head)

// Printing the reversed linked list
var current = reversedHead
while current != nil {
    print(current!.val)
    current = current?.next
}

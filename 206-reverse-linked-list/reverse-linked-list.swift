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
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        var curr = head

        var prevNode: ListNode? = nil
        // var prevNode: ListNode = ListNode()

        // guard let curr.next else { return nil }
        while curr != nil {
            let nextNode = curr?.next
            curr?.next = prevNode
            prevNode = curr
            curr = nextNode
        }
        
        return prevNode

    }
}
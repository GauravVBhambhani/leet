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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var carry = 0
        let dummy = ListNode(-1)
        var curr = dummy

        var l1 = l1, l2 = l2 // Mutable copies to traverse the lists

        while l1 != nil || l2 != nil || carry != 0 {
            let x = l1?.val ?? 0
            let y = l2?.val ?? 0

            var sum = x + y + carry
            carry = sum / 10
            curr.next = ListNode(sum % 10)
            curr = curr.next!

            if l1 != nil { l1 = l1?.next }
            if l2 != nil { l2 = l2?.next }
        }

        return dummy.next
    }
}
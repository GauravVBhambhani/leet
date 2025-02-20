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
    // RECURSION (Time: O(m+n) (each node is visited once), 
    // Space: O(m+n) recursion call stack for each node)

    // func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
    //     if list1 == nil {
    //         return list2
    //     }

    //     if list2 == nil {
    //         return list1
    //     }

    //     if list1!.val <= list2!.val {
    //         list1!.next = mergeTwoLists(list1!.next, list2)
    //         return list1
    //     } else {
    //         list2!.next = mergeTwoLists(list1, list2!.next)
    //         return list2
    //     }
    // }

    // ITERATION (Space: O(1))

    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        var curr = dummy

        var l1 = list1
        var l2 = list2

        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                curr.next = l1
                l1 = l1!.next
            } else {
                curr.next = l2
                l2 = l2!.next
            }
            curr = curr.next!
        }
        curr.next = l1 ?? l2

        return dummy.next
    }
}
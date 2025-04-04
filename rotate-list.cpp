/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public ListNode rotateRight(ListNode head, int k) {
        
        // traverse to last node, length++;
        // set last node next to head => circular linked list
        // k = length % k;

        if (head == null || head.next == null) return head;
        if (k==0) return head;
        int length = 1;
        ListNode curr = head;
        while(curr.next != null) {
            length++;
            curr = curr.next;
        }
        curr.next = head;
        // k = length%k;
        k = length - k % length;
        System.out.println(length);
        System.out.println(k);
        // int new_tail = (length - k % length - 1)
        // int new_head = length - k;

        while (k > 0) {
            curr = curr.next;
            k--;
        }

        head = curr.next;
        curr.next = null;
        
        return head;


    }
}
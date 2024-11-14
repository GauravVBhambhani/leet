/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode() {}
 *     TreeNode(int val) { this.val = val; }
 *     TreeNode(int val, TreeNode left, TreeNode right) {
 *         this.val = val;
 *         this.left = left;
 *         this.right = right;
 *     }
 * }
 */
class Solution {
    public int minDepth(TreeNode root) {
        if (root == null) return 0;

        // if only 1 child is non-null, then get into that recursion.
        if (root.left == null) {
            return 1 + minDepth(root.right); 
        } else if (root.right == null) {
            return 1 + minDepth(root.left);
        }


        // this means both children are not null
        return 1 + Math.min(minDepth(root.left), minDepth(root.right));
    }
}
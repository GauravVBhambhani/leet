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
/*
    private void preorder(TreeNode root, ArrayList<String> arr) {
        if (root == null) {
            arr.add("null");
            return;
        } 
        arr.add(String.valueOf(root.val));
        preorder(root.left, arr);
        preorder(root.right, arr);
    }

    public boolean isSameTree(TreeNode p, TreeNode q) {
        // do preorder travelsal of both trees
        // compare results

        // for tree p
        ArrayList<String> p_list = new ArrayList<>();
        preorder(p, p_list);

        // for tree q
        ArrayList<String> q_list = new ArrayList<>();
        preorder(q, q_list);

        return p_list.equals(q_list);

    }
    */

    public boolean isSameTree(TreeNode p, TreeNode q) {
        if (p == null && q == null) return true;
        if (p == null || q == null) return false;

        if (p.val != q.val) return false;
        return isSameTree(p.left, q.left) && isSameTree(p.right, q.right);

    }
}
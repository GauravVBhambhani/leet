class Solution {
    public void merge(int[] nums1, int m, int[] nums2, int n) {
        
        

        // if (m > 0 || n > 0) {

            int k = m + n - 1;
            int n1_idx = m-1;
            int n2_idx = n-1;
            while (n2_idx >= 0) {
            
                if (n1_idx >= 0 && nums1[n1_idx] > nums2[n2_idx]) {
                    nums1[k] = nums1[n1_idx];
                    n1_idx--;
                } else {
                    nums1[k] = nums2[n2_idx];
                    n2_idx--;
                }
                k--;
            }
        // }
    }
}
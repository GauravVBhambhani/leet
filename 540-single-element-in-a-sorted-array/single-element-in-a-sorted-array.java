class Solution {
    public int singleNonDuplicate(int[] nums) {
        
        int l = 0; 
        int r = nums.length - 1;

        while(l <= r) {
            int m = l + ((r - l) /2);

            if (m == 0 || m == nums.length - 1) return nums[m];
            if ((nums[m-1] != nums[m]) && (nums[m] != nums[m+1])) return nums[m];

            if (m%2 == 0) {
                if (nums[m] == nums[m-1]) {
                    r = m-1;
                } else {
                    l = m+1;
                }
            } else {
                if (nums[m] == nums[m-1]) {
                    l = m+1;
                } else {
                    r = m-1;
                }
            }
        }
        return -1;
    }
}
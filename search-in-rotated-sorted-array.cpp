class Solution {

    // public static int binarySearch(int[] nums, int left, int right, int target) {
    //     while (left < right) {
    //         int mid = left + ((right - left)/2);

    //         if (target == nums[mid]) return mid;

    //         if (target < nums[mid]) {
    //             right = mid - 1;
    //         } else {
    //             left = mid + 1;
    //         }
    //     }
    //     return -1;
    // }

    public int search(int[] nums, int target) {
        
        int left = 0;
        int right = nums.length - 1;
        
        while (left <= right) {
            int mid = left +((right - left) / 2);
            if (target == nums[mid]) return mid;

            // left sorted
            if (nums[left] <= nums[mid]) {
                if (nums[left] <= target && target <= nums[mid]) {
                    right = mid - 1;
                } else {
                    left = mid + 1;
                }

            } else {
                // right sorted
                if (nums[mid] <= target && target <= nums[right]) {
                    left = mid +1;
                } else {
                    right = mid - 1;
                }
            }
        }
        return -1;

    }
}
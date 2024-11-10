class Solution {

    public static boolean existsInArray(int[] nums2, int element) {
        for (int num: nums2) {
            if (num == element) {
                return true;
            }
        }
        return false;
    }

    public int[] intersection(int[] nums1, int[] nums2) {
        
        List<Integer> res = new ArrayList<>();

        for (int i = 0; i < nums1.length; i++) {
            if (!res.contains(nums1[i]) && existsInArray(nums2, nums1[i])) {
                res.add(nums1[i]);
            }
        }

        int[] intersection = new int[res.size()];
        for (int e = 0; e < res.size(); e++) {
            intersection[e] = res.get(e);
        }
        return intersection;
    }
}
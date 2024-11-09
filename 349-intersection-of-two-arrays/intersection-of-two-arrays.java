class Solution {
    public int[] intersection(int[] nums1, int[] nums2) {
        
        Set<Integer> a = new HashSet<>();
        for (int i = 0; i < nums1.length; i++) {
            a.add(nums1[i]);
        }
        

        Set<Integer> b = new HashSet<>();
        for (int i = 0; i < nums2.length; i++) {
            b.add(nums2[i]);
        }

        Set<Integer> intersection = new HashSet<>(a);
        intersection.retainAll(b);

        // int[] res = new int[intersection.size()];
        return intersection.stream().mapToInt(Integer::intValue).toArray();


        // return res;
    }
}
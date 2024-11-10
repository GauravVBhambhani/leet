class Solution {
    public int majorityElement(int[] nums) {
        
        // HashMap<Integer, Integer> hm = new HashMap<>();

        // for (int i: nums) {
        //     hm.put(i, hm.getOrDefault(i, 0)+1);
        // }
        // for (int i: hm.keySet()) {
        //     if (hm.get(i) > nums.length / 2) {
        //         return i;
        //     }
        // }

        // return -1;

        int count = 0;
        int candidate = Integer.MAX_VALUE;

        for (int i: nums) {
            if (count == 0) {
                candidate = i;
            }
            if(candidate == i) {
                count++;
            } else {
                count--;
            }
        }
        return candidate;
    }
}
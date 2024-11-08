class Solution {
    public int numPairsDivisibleBy60(int[] time) {
        
        int[] remainder_count = new int[60];
        int pair = 0;

        for (int i = 0; i < time.length; i++) {
            int remainder = time[i] % 60;
            int complement = (60 - remainder) % 60;

            pair += remainder_count[complement];
            remainder_count[remainder] += 1;
        }

        return pair;


    }
}
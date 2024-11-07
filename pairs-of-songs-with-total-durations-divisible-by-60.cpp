class Solution {
    public int numPairsDivisibleBy60(int[] time) {
        
        int[] remainders_count = new int[60];
        int pair = 0;

        for (int i = 0; i < time.length; i++) {
            int remainder = time[i] % 60;

            int complement = remainder == 0 ? 0 : 60 - remainder;

            pair += remainders_count[complement];

            remainders_count[remainder]++;
        }

        return pair;
    }
}
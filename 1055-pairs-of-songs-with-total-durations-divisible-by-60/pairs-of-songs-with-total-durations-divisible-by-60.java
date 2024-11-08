class Solution {
    public int numPairsDivisibleBy60(int[] time) {  

        int pair = 0;
        int[] rc = new int[60];
        
        for(int i = 0; i < time.length; i++) {

            int r = time[i] % 60;
            int complement = (60 - r) % 60 ;
            
            pair += rc[complement];

            rc[r]++;
        }
        return pair;
    }
}
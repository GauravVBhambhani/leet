class Solution {
    public int numPairsDivisibleBy60(int[] time) {  

        int pair = 0;
        // int[] rc = new int[60];

        HashMap<Integer, Integer> hm = new HashMap<>();
        
        for(int i = 0; i < time.length; i++) {

            int r = time[i] % 60;
            int complement = (60 - r) % 60 ;
            if (hm.containsKey(complement)) pair += hm.get(complement);
            hm.put (r, hm.getOrDefault(r, 0) + 1);
        }
        return pair;
    }
}
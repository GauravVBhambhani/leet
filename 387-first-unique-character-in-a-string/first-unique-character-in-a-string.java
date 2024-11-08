class Solution {
    public int firstUniqChar(String s) {
        
        HashMap<Character, Integer> hm = new HashMap<>();
        // char val = '\0';

        for (int i = 0; i < s.length(); i++) {
            hm.put(s.charAt(i), hm.getOrDefault(s.charAt(i), 0)+1);
        }

        for (int i = 0; i < s.length(); i++) {
            char val = s.charAt(i);
            if (hm.get(val) == 1)
            return s.indexOf(val);
        }
        return -1;
    }
}
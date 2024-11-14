class Solution {
    public void reverseString(char[] s) {
        
        for (int i = 0; i < s.length/2; i++) {
            char firstChar = s[i];
            char lastChar = s[s.length - 1- i];
            s[i] = lastChar;
            s[s.length - i - 1] = firstChar;
        }
        

    }
}
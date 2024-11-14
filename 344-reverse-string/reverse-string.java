class Solution {
    public void reverseString(char[] s) {
        
        // for (int i = 0; i < s.length/2; i++) {
        //     char firstChar = s[i];
        //     char lastChar = s[s.length - 1- i];
        //     s[i] = lastChar;
        //     s[s.length - i - 1] = firstChar;
        // }

        int l = 0;
        int r = s.length - 1;
        while(l < r) {
            char temp = s[l];
            s[l] = s[r];
            s[r] = temp;
            l++;
            r--;
        }


    }
}
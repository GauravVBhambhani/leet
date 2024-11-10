class Solution {
    public boolean isPalindrome(int x) {
        
        int t = x;
        int c = 0;
        while(t > 0) {
            c *= 10;
            c += t%10;
            t /= 10;
        }
        return (c == x);

    }
}
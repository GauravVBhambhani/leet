class Solution {
    public int reverse(int x) {
        
        int n = 0;
        int temp = Math.abs(x);

        while (temp > 0) {
            if (n > (Integer.MAX_VALUE / 10)) return 0;
            n *= 10;
            n += temp % 10;
            temp /= 10;
        }

        if (x < 0){
            n *= -1;
        }

        return n;
    }
}
class Solution {
    public int fib(int n) {
        int currentSum = 0;

        if (n == 0) return 0;
        if (n == 1 || n == 2) return 1;

        return fib(n-1) + fib(n-2);

        
    }
}
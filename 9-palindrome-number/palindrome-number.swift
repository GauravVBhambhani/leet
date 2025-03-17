class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        
        var n = x
        var rev = 0
        while n > 0 {
            rev *= 10
            rev += n%10
            n /= 10
        }
        return rev == x
    }
}
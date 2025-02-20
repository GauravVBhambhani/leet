class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var t = x
        var temp = 0

        while (t > 0) {
            temp *= 10
            temp += t % 10
            t /= 10
        }

        if temp == x {
            return true
        } else {
            return false
        }
    }
}
class Solution {
    func validPalindrome(_ s: String) -> Bool {
        var i = 0
        var j = s.count - 1
        let s = Array(s)
        while (i < j) {
            
            if s[i] != s[j] {
                return (checkPalindrome(s, i, j-1) || checkPalindrome(s, i+1, j))
            }
            i += 1
            j -= 1
        }
        return true
    }

    func checkPalindrome(_ s: [Character], _ i: Int, _ j: Int) -> Bool {
        var l = s.index(s.startIndex, offsetBy: i)
        var r = s.index(s.startIndex, offsetBy: j)

        while (l < r) {
            if s[l] != s[r] { return false }
            l = s.index(after: l)
            r = s.index(before: r)
        }
        return true
    }
}
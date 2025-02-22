class Solution {
    func isPalindrome(_ s: String) -> Bool {
        // var st = s
        // st = st.lowercased()
        // st = st.filter({$0.isLetter || $0.isNumber})  
        // let t = String(st.reversed())
        // return st == t

        var st = s.lowercased().filter { $0.isLetter || $0.isNumber }

        if st.isEmpty { return true }

        var l = st.startIndex
        var r = st.index(before: st.endIndex)

        while l < r {
            if st[l] != st[r] {
                return false
            }
            l = st.index(after: l)
            r = st.index(before: r)
        }

        return true
    }
}
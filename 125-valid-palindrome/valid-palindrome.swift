class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var st = s
        st = st.lowercased()
        // st.replacingOccurrences(of: " ", with: "")
        // st = st.filter { !$0.isWhitespace }
        // st = st.replacingOccurrences(of: ",", with: "")
        // st = st.replacingOccurrences(of: ":", with: "")
        // st = st.replacingOccurrences(of: ".", with: "")
        // st = st.replacingOccurrences(of: "@", with: "")

        st = st.filter({$0.isLetter || $0.isNumber})  

        let t = String(st.reversed())

        return st == t
    }
}
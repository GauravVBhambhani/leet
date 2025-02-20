class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        var result: String = strs[0]

        for i in 1..<strs.count {
            while !strs[i].hasPrefix(result) {
                result.removeLast()
                if result.isEmpty {return ""}
            }
        }

        return result
    }
}
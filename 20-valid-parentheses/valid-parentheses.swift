class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []

        let bracketPairs: [Character : Character] = [")" : "(", "}" : "{", "]" : "["]

        for ch in s {
            if ch == "(" || ch == "{" || ch == "[" {
                stack.append(ch)
            }
            
            else if let expectedBracket = bracketPairs[ch] {
                if stack.popLast() != expectedBracket {
                    return false
                }
            } 
            
            else {
                return false
            }
        }

        return stack.isEmpty
    }
}
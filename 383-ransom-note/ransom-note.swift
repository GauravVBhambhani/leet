class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict = [Character: Int]()
        for character in ransomNote {
            dict[character, default: 0] += 1
        }
        for character in magazine {
            dict[character, default: 0] -= 1
        }
        for (character, count) in dict {
            print("\(character) : \(count)")
            if count > 0 {
                return false
            }
        }
        return true
    }
}
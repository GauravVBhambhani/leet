class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        // var dict = [Character: Int]()
        // for character in ransomNote {
        //     dict[character, default: 0] += 1
        // }

        // for character in magazine {
        //     dict[character, default: 0] += 1
        // }

        // for (_, count) in dict {
        //     // print("\(character) : \(count)")
        //     if count > 0 {
        //         return false
        //     }
        // }

        // return true

        var dict = [Character: Int]()

        for character in ransomNote {
            dict[character, default: 0] += 1
        }

        for character in magazine {
            if let count = dict[character] {
                dict[character] = count - 1
                if dict[character] == 0 {
                    dict.removeValue(forKey: character)
                }
            }
            if dict.isEmpty {
                return true
            }
        }

        return dict.isEmpty

    }
}
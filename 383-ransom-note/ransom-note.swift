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


// Solution 2: little faster
        // var dict = [Character: Int]()

        // for character in ransomNote {
        //     dict[character, default: 0] += 1
        // }

        // for character in magazine {
        //     if let count = dict[character] {
        //         dict[character] = count - 1
        //         if dict[character] == 0 {
        //             dict.removeValue(forKey: character)
        //         }
        //     }
        //     if dict.isEmpty {
        //         return true
        //     }
        // }

        // return dict.isEmpty

// Solution 3: fastest / most optimized

        var copyMagazine = magazine

        for character in ransomNote {
            if let index = copyMagazine.firstIndex(of: character) {
                copyMagazine.remove(at: index)
            } else {
                return false
            }
        }
        return true
    }
}
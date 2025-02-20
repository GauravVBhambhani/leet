class Solution {
    func firstUniqChar(_ s: String) -> Int {

        // let s = "leetcode"

        // for (index, char) in s.enumerated() {
        //     if s.filter({$0 == char}).count == 1 {
        //         return index
        //     }
        // }
        // return -1

        var dict = [Character : Int]()

        for char in s {
            dict[char, default: 0] += 1
        }

        for (index, char) in s.enumerated() {
            if dict[char] == 1 {
                return index
            }
        }

        return -1
    }
}
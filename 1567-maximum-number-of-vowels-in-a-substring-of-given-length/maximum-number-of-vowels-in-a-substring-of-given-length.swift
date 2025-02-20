class Solution {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
        let chars = Array(s)
        var maxCount = 0
        var currentCount = 0

        // check first window
        for i in 0..<k {
            if vowels.contains(chars[i]) {
                currentCount += 1
            }
        }

        maxCount = currentCount
        
        // move the window
        for i in k..<chars.count {
            if vowels.contains(chars[i]) {
                currentCount += 1
            }

            if vowels.contains(chars[i - k]) {
                currentCount -= 1
            }

            maxCount = max(maxCount, currentCount)
        }


        return maxCount

    }
}
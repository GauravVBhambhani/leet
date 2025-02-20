class Solution {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
        var count: Int = 0
        var arr = Array(s)

        for i in 0..<k {
            count += vowels.contains(arr[i]) ? 1 : 0
        }

        var answer = count

        for i in k..<arr.count {
            count += vowels.contains(arr[i]) ? 1 : 0
            count -= vowels.contains(arr[i - k]) ? 1 : 0
            answer = max(answer, count)
        }

        return answer

    }
}
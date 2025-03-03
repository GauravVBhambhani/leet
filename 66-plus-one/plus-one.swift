class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        // no need to convert to Int. Large Int can cause issues. Treating this as a array manipulation problem.

        var digits = digits
        // for digit in digits.indices.reversed() {}
        for digit in digits.indices.reversed() {
            guard digits[digit] == 9 else {
                digits[digit] += 1
                return digits
            }

            digits[digit] = 0
        }
        digits.insert(1, at: 0)
        return digits
    }
}
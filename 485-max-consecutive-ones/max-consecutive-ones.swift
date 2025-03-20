class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var count = 0
        var maxCount = 0
        for num in nums {
            print("num = \(num)")
            if num == 1 {
                count += 1
                maxCount = max(maxCount, count)
            } else {
                count = 0
            }
            
        }
        return maxCount
    }
}
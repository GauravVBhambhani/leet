class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        
        var nums = nums
        for i in 0..<nums.count {
            nums[i] *= nums[i]
        }

        return nums.sorted()

    }
}
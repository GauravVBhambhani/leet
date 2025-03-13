class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        
        var sum = 0
        var nums = nums
        for i in 0..<nums.count {
            sum += nums[i]
            nums[i] = sum
        }
        return nums 
    }
}
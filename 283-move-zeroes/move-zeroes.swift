class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var resultArr: [Int] = Array(repeating: 0, count: nums.count)
        var j = 0
        for i in 0..<nums.count {
            if (nums[i] != 0) {
                resultArr[j] = nums[i]
                j += 1
            }
        }
        nums = resultArr
    }
}
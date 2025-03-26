class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var i = 0
        var j = 1

        while j < nums.count {
            if nums[j] == nums[i] {
                j += 1
            } else {
                i += 1
                nums[i] = nums[j]
                j += 1
            }
        }

        return i + 1
    }
}
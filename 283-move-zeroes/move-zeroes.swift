class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var write = 0
        for read in 0..<nums.count {
            if nums[read] != 0 {
                nums[write] = nums[read]
                write += 1
            }
        }

        while write < nums.count {
            nums[write] = 0
            write += 1
        }
    }
}
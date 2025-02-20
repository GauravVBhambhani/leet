class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var insertIndex = 1
        
        for i in 1..<nums.count {
            if nums[i-1] != nums[i] {
                nums[insertIndex] = nums[i]
                insertIndex += 1
            }
        }

        return insertIndex
    }
}
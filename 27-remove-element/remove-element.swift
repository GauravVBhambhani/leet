class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        // var j = 0
        // for i in 0..<nums.count {
        //     if nums[i] != val {
        //         nums[j] = nums[i]
        //         j += 1
        //     }
        // }
        // return j 

        nums = nums.filter { $0 != val }
        return nums.count
    }
}
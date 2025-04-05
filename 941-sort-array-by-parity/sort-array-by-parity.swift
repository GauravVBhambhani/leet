class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        // var res: [Int] = Array(repeating: 0, count: nums.count)
        // var i = 0
        // for even in 0..<nums.count {
        //     if nums[even] % 2 == 0 {
        //         res[i] = nums[even]
        //         i += 1
        //     }
        // }
        // for odd in 0..<nums.count {
        //     if nums[odd] % 2 != 0 {
        //         res[i] = nums[odd]
        //         i += 1
        //     }
        // }
        // return res

        var nums = nums
        var i = 0
        var j = nums.count - 1
        while (i < j) {
            if (nums[i]%2 > nums[j]%2) {
                var temp = nums[j]
                nums[j] = nums[i]
                nums[i] = temp
            }

            if nums[i] % 2 == 0 { i += 1}
            if nums[j] % 2 != 0 { j -= 1}
        }
        return nums
    }
}
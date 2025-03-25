class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        // var nums = nums
        // for i in 0..<nums.count {
        //     nums[i] *= nums[i]
        // }
        // return nums.sorted()

        var n = nums.count
        var result = [Int](repeating: 0, count: n)

        var l = 0
        var r = nums.count - 1

        for i in (0 ..< n).reversed() {
            if ( abs(nums[l]) > abs(nums[r]) ) {
                result[i] = nums[l] * nums[l]
                l += 1
                
            } else {
                result[i] = nums[r] * nums[r]
                r -= 1
            }
        }

        return result
    }
}
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        // sorted tells me binary search
        var left: Int = 0
        var right: Int = nums.count - 1
        var mid: Int = 0

        while (left <= right) {
            mid = left + (right - left)/2
            if nums[mid] == target { return mid }

            if target >= nums[mid] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }        

        return left
    }
}
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        for (index, num) in nums.enumerated() {
            let diff = target - num

            for (i, value) in nums.enumerated() {
                if diff == value, i != index {
                    return [index, i]
                }
            }
        }
        return []
    }
}
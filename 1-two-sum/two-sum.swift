class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        var result: [Int] = []
        
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if (target - nums[i] == nums[j]) {
                    return [i, j]
                }
            }
        }
        return []
    }
}
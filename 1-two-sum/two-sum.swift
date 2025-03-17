class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // for i in 0..<nums.count {
        //     for j in i+1..<nums.count {
        //         if (target - nums[i] == nums[j]) {
        //             return [i, j]
        //         }
        //     }
        // }
        // return []

        var hm: [Int: Int] = [:]

        for i in 0..<nums.count {
            let complement = target - nums[i]
            if let exist = hm[complement]{
                return [i, exist]
            }
            hm[nums[i]] = i
        }
        return []

    }
}
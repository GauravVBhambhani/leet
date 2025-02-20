class Solution {
    // func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
    //     for (index, num) in nums.enumerated() {
    //         let diff = target - num

    //         for (i, value) in nums.enumerated() {
    //             if diff == value, i != index {
    //                 return [index, i]
    //             }
    //         }
    //     }
    //     return []
    // }


    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap = [Int : Int]()

        for (index, num) in nums.enumerated() {
            let diff = target - num

            if let i = hashMap[diff] {
                return [i, index]
            }

            hashMap[num] = index
        }
        return []
    }

}
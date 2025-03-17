class Solution {
    func divideArray(_ nums: [Int]) -> Bool {
        
        var hm = [Int: Int]()

        for num in nums {
            hm[num, default: 0] += 1 
        }

        print(hm)

        // for (num, count) in hm {
        for count in hm.values {
            if count % 2 != 0 {
                return false
            }
        }

        return true

    }
}
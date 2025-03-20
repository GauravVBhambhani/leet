class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        // var isEven = 0
        // for num in nums {
        //     var digitCount = 0
        //     var num = num
        //     while (num != 0) {
        //         num /= 10
        //         digitCount += 1
        //     }
        //     if digitCount % 2 == 0 {
        //         isEven += 1
        //     }
        // }
        // return isEven

        var isEven = 0
        for num in nums {
            if ((num >= 10 && num <= 99) || (num >= 1000 && num <= 9999) || (num == 100000) ) {
                isEven += 1
            }
        }
        return isEven
    }
}
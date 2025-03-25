class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        
        // 1: I need to find the number of zeroes we will be duplicating (without exceeding boundary)
        var zerosToDuplicate = 0
        var n = arr.count

        for i in 0 ..< n {
            if arr[i] == 0 {
                if i + zerosToDuplicate >= n-1 {

                    // handles if last element is 0 => not to be duplicated
                    if i + zerosToDuplicate == n-1 {
                        arr[n-1] = 0
                        n -= 1
                    }

                    break
                }

                zerosToDuplicate += 1
            }
        }

        // 2: make inline changes by 2 pointer from left to right

        var i = n - 1 - zerosToDuplicate
        var j = n - 1

        while i >= 0 {
            if arr[i] == 0 {
                arr[j] = 0
                j -= 1
                arr[j] = 0
            } else {
                arr[j] = arr[i]
            }
            i -= 1
            j -= 1
        }
    }
}
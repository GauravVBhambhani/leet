class Solution {
    func duplicateZeros(_ arr: inout [Int]) {

        let n = arr.count
        var results = [Int](repeating: 0, count: n)
        var j = 0

        for i in (0 ..< n) {
            if arr[i] == 0 {
                j += 1
            } else {
                results[j] = arr[i]
            }
            j += 1

            if (j >= n) { break }
        }
        print(results)
        arr = results
    }
}
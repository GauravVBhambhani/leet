class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var arr = arr.sorted()
        for i in 0..<arr.count {
            var l = 0
            var r = arr.count - 1

            while (l <= r) {
                var mid = l + (r - l) / 2
                if arr[mid] == 2 * arr[i] && mid != i {
                    return true
                }

                if arr[mid] > 2 * arr[i] {
                    r = mid - 1
                } else {
                    l = mid + 1
                }
            }
        }
        return false
    }
}
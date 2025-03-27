class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var arr = arr.sorted()
        for i in 0..<arr.count {
            var l = 0
            var r = arr.count - 1

            while (l <= r) {
                var mid = l + (r - l) / 2
                
                if mid != i && arr[mid] == 2 * arr[i] { return true }

                if arr[mid] < 2 * arr[i] {
                    l = mid + 1
                } else {
                    r = mid - 1
                }
            }
        }

        return false
    }
}
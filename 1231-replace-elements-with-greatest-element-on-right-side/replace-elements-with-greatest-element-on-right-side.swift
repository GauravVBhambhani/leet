class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var arr = arr
        var current = 0
        for i in current+1..<arr.count {
            var maximum = arr[i]
            for m in i+1..<arr.count {
                if (maximum < arr[m]) {
                    maximum = arr[m]
                }
            }
            arr[current] = maximum
            current += 1
        }
        arr[arr.count - 1] = -1
        return arr
        
    }
}
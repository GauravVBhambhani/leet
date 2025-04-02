class Solution {
    func validMountainArray(_ arr: [Int]) -> Bool {
        
        var index = 0

        // first let's do strictly increase
        for i in 1..<arr.count {
            if arr[i-1] < arr[i] {
                index += 1
            }
        }

        if index == 0 || index == arr.count - 1 { return false }

        // now, strictly decreasing
        for i in index+1..<arr.count {
            print(i)
            if (arr[i - 1] > arr[i] ) {
                index += 1
            }
        }

        return index == arr.count - 1
    }
}
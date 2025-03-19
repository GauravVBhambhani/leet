class Solution {
    func romanToInt(_ s: String) -> Int {
        
        var str = Array(s.reversed())
        var count = getIntOfRoman(str[0]) 
        for i in 1..<str.count {
            print("Count: \(count)")
            if getIntOfRoman(str[i]) >= getIntOfRoman(str[i-1]) {
                count += getIntOfRoman(str[i])
            } else {
                count -= getIntOfRoman(str[i])
            }
        }
        return count
    }

    func getIntOfRoman(_ c: Character) -> Int {
        switch c {
            case "I":
            return 1
            case "V":
            return 5
            case "X":
            return 10
            case "L":
            return 50
            case "C":
            return 100
            case "D":
            return 500
            default:
            return 1000
        }
    }
}
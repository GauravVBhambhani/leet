class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        
        guard num > 0 else { return 0 }
       
        var steps = 0
        var num = num

        while num != 0 {
            // if num % 2 == 0 {
            if (num & 1) == 0 {
                // num /= 2
                num >>= 1
            } else {
                num -= 1
            }

            steps += 1
        }

        return steps 
    }
}
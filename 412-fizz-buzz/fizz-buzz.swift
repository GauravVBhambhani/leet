class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        
        var result: [String] = []

        for i in 1 ... n {

            print(i)

            if i % 3 == 0 && i % 5 == 0 {
                result.append("FizzBuzz")
            }

            if i % 3 == 0 && i % 5 != 0  {
                result.append("Fizz")
            }

            if i % 5 == 0 && i % 3 != 0 {
                result.append("Buzz")
            }

            if i % 3 != 0 && i % 5 != 0 {
                result.append("\(i)")
            }
        }

        return result
    }
}
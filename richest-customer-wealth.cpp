class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        
        let rows = accounts.count
        let cols = accounts[0].count
        var wealth = 0

        for r in 0..<rows {
            var sum = 0
            for c in 0..<cols {
                sum += accounts[r][c]
            }
            wealth = max(sum, wealth);
        }

        return wealth

    }
}
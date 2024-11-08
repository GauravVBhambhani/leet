class Solution {
    public int maxProfit(int[] prices) {
        int profit = 0;

        
        int buyDay = 0;
        int sellDay = 1;
        
        // for (int buyDay = 0; buyDay < prices.length; buyDay++) {
        //     for (int sellDay = buyDay + 1; sellDay < prices.length; sellDay++) {
        //         if (sellDay < buyDay) {
        //             buyDay = sellDay;
        //         }
        //         profit = Math.max(profit, (prices[sellDay] - prices[buyDay]));
        //     }
        // }

        while (sellDay < prices.length) {
            if (prices[buyDay] < prices[sellDay]) {
                profit = Math.max(profit, (prices[sellDay] - prices[buyDay]));
            } else {
                buyDay = sellDay;
            }
            sellDay++;
        }

        return profit;
    }
}
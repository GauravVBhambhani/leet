class Solution {
    public int lastStoneWeight(int[] stones) {

        if (stones.length == 1) return stones[0];
        PriorityQueue<Integer> maxHeap = new PriorityQueue<>(Collections.reverseOrder());



        // System.out.println(maxHeap.toString());
        
        for (int i : stones) {
            maxHeap.add(i);
        }

        // System.out.println(maxHeap.toString());

        while (maxHeap.size() >= 2) {

            int stone1 = maxHeap.poll();
            System.out.println("stone 1: " + stone1);
            
            int stone2 = maxHeap.poll();
            System.out.println("stone 2: " + stone2);

            if (stone1 != stone2) {
                maxHeap.add(stone1-stone2);
            }
        }

        if (maxHeap.isEmpty()) return 0;
        return maxHeap.poll();
    }
}
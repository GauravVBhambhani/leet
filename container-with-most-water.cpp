class Solution {
    public int maxArea(int[] height) {
        
        int l = 0;
        int r = height.length - 1;

        int max_area = 0;
        
        while (l < r) {
            int area = (r - l) * Math.min (height[l], height[r]);
            max_area = Math.max (max_area, area);
            if (height[l] > height[r]) {
                r--;
            } else {
                l++;
            }
            
            
        }

        return max_area;
    }
}
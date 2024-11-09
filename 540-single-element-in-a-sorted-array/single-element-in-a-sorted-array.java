class Solution {
    public int singleNonDuplicate(int[] n) {

        int l = 0;
        int r = n.length - 1;

        if (n.length == 1) return n[0];

        while (l <= r) {
            int m = l + ((r-l)/2);


            if (m == 0 && n[m] != n[m+1]) return n[m];
            if (m == n.length -1 && n[n.length -1] != n[n.length -2]) return n[m];
            if (n[m-1] != n[m] && n[m] != n[m+1]) return n[m];

            if (m%2 == 0) {
                
                if (n[m] == n[m-1]) {// element in left
                  r = m - 1;
                }
                else { // element in right
                    l = m + 1;
                }
            } else {
                if (n[m] == n[m-1]) { // element in right
                    l = m + 1;
                } else { 
                    r = m - 1;
                }
            }
        }
        return -1;
       

    }
}
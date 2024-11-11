class Solution {
    public String reverseWords(String s) {
        
        String[] sl = s.split(" ");
        StringBuilder res = new StringBuilder();

        for (int j = 0; j < sl.length; j++) {
            // System.out.println(str);
            char[] ca = sl[j].toCharArray();
            for (int i = 0; i < ca.length/2; i++) {
                char fChar = ca[i];
                char lChar = ca[ca.length - 1 - i];

                ca[i] = lChar;
                ca[ca.length - 1 - i] = fChar; 
            }
            // for (int i = 0; i < ca.length; i++) {
            //     System.out.println(ca[i]);
            // }
            res.append(String.valueOf(ca));
            
            if (j != sl.length - 1) {
                res.append(" ");
            }
        }
        return res.toString();
    }
}
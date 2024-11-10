class Solution {
    public String mergeAlternately(String word1, String word2) {
    
        // int i = 0;
        // int j = 0;
        StringBuilder sb = new StringBuilder();
        
        // while(i < word1.length() || j < word2.length()) {
        //     if (i < word1.length()) {
        //         sb.append(word1.charAt(i));
        //         i++;
        //     }
        //     if (j < word2.length()) {
        //         sb.append(word2.charAt(j));
        //         j++;
        //     }
        // }

        for (int i = 0; i < Math.max(word1.length(), word2.length()); i++) {
            if (i < word1.length()) {
                sb.append(word1.charAt(i));
            }
            if (i < word2.length()) {
                sb.append(word2.charAt(i));
            }
        }
        return sb.toString();
    }
}
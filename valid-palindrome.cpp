class Solution {
    public boolean isPalindrome(String s) {
        String lowerCaseString = s.toLowerCase();
        String finalStr = lowerCaseString.replaceAll("[^a-z0-9]", "");
        // System.out.println(finalStr);
        char[] arr = new char[finalStr.length()];

        for (int i = 0; i < finalStr.length(); i++) {
            arr[i] = finalStr.charAt(i);
        }
        
        int p = 0;
        int q = arr.length -1;
        while (p <= q) {
            if (arr[p] != arr[q]) return false;
            p++;
            q--;
        }

        return true;
    }
}
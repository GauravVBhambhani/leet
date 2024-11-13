class Solution {
    public String reverseWords(String s) {
        
        String[] strs = s.split(" ");
        StringBuilder sb = new StringBuilder();
        int count = 0;

        for (String str: strs) {
            char[] sc = str.toCharArray();

            for (int i = 0; i < sc.length/2; i++) {
                char firstChar = sc[i];
                char secondChar = sc[sc.length - 1 - i];

                sc[i] = secondChar;
                sc[sc.length - 1 - i] = firstChar;
            }

            for (int i = 0; i < sc.length; i++) {
                sb.append(sc[i]);
            }
            count++;
            if (count < strs.length) {
                sb.append(" ");
            }
        }
        // System.out.println(sb.toString());
        return sb.toString();

    }
}
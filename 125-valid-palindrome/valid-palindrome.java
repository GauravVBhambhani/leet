class Solution {
    public boolean isPalindrome(String s) {

        s = s.toLowerCase();
        // System.out.println(s);
        
        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < s.length(); i++) {
            if ((s.charAt(i) >= 'a' && s.charAt(i) <= 'z') || (s.charAt(i) >= '0' && s.charAt(i) <= '9') ) {
                sb.append(s.charAt(i));
            }
        }

        // System.out.println(sb.toString());

        char[] c = new char[sb.length()];
        for (int i = 0; i < sb.length(); i++) {
            c[i] = sb.charAt(i);
        }

        // reverse
        for (int i = 0; i < c.length / 2; i++) {
            char firstChar = c[i];
            char lastChar = c[c.length - 1 - i];

            c[i] = lastChar;
            c[c.length - i - 1] = firstChar;
        }
        
        StringBuilder news = new StringBuilder();
        for (char ch: c) {
            news.append(ch);
        }

        System.out.println(sb.toString());
        System.out.println(news.toString());

        if (sb.toString().equals(news.toString())) return true;
        return false;

    }
}
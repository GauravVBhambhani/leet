class Solution {

    public static boolean isVowel(char c) {
        // if ("aeiou".indexOf(c) > -1) return true;
        // return false;

        return ("aeiou".indexOf(c) != -1);
    }

    public int vowelStrings(String[] words, int left, int right) {
        char[] v = {'a', 'e', 'i', 'o', 'u'};
        int count = 0;

        for(int i = left; i <= right; i++ ) {
            if (isVowel(words[i].charAt(0)) && isVowel(words[i].charAt(words[i].length()-1))) {
                count++;
            }
        }
        return count;
    }
}
class Solution {
    public static boolean isVowel(char c) {
        return "aeiou".indexOf(c) != -1;
    }
    public int countVowelSubstrings(String word) {
        int count = 0;
        Set<Character> vowelSet = new HashSet<>();

        for (int i = 0; i < word.length(); i++) {
            vowelSet.clear();
            for (int j = i; j < word.length(); j++) {
                if(!isVowel(word.charAt(j))) break;

                vowelSet.add(word.charAt(j));
                if (vowelSet.size() == 5) { 
                    count++;  
                    
                }
            }
            
        }
        return count;
    }
}
class Solution {
    public boolean isValid(String s) {
        Stack<Character> stk = new Stack<>();

        if (s.charAt(0) == '}' || s.charAt(0) == ')' || s.charAt(0) == ']' ) return false;

        int i = 0;
        while(i < s.length()) {
            if (s.charAt(i) == '(' || s.charAt(i) == '{' || s.charAt(i) == '[') stk.push(s.charAt(i));
            if (s.charAt(i) == ')' || s.charAt(i) == '}' || s.charAt(i) == ']') {
                if (stk.empty()) return false;
                if ( (s.charAt(i) == ')' && stk.peek() == '(' ) ||  (s.charAt(i) == '}' && stk.peek() == '{' ) || (s.charAt(i) == ']' && stk.peek() == '[' )) {
                    stk.pop();
                } else {
                    return false;
                }
            }
            i++;
        }
        return stk.empty();
    }
}
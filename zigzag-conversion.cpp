class Solution {
    public String convert(String s, int numRows) {
        
        if (numRows == 1) return s;

        StringBuilder[] rows = new StringBuilder[numRows];
        for (int i = 0; i < numRows; i++) {
            rows[i] = new StringBuilder();
        }

        int currentRow = 0;
        boolean goingDown = true;

        for (int i=0; i < s.length(); i++) {
            rows[currentRow].append(s.charAt(i));
            
            if (currentRow == numRows -1) {
                goingDown = false;
                // currentRow--;
            }
            else if (currentRow == 0) {
                goingDown = true;
                // currentRow++;
            }
            currentRow += goingDown ? 1 : -1;
        }

        StringBuilder result = new StringBuilder();
        for (int i = 0; i < numRows; i++) {
            result.append(rows[i]);
        }

        return result.toString();
    }
}
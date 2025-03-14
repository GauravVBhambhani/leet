class Solution {
    public boolean exist(char[][] board, String word) {
        
        int numberOfRows = board.length;
        int numberOfColumns = board[0].length;

        int currentIndex = 0;

        // First let's check if the first character exists:
        for (int currentRow = 0; currentRow < numberOfRows; currentRow++) {
            for (int currentCol = 0; currentCol < numberOfColumns; currentCol++) {
                if (board[currentRow][currentCol] == word.charAt(currentIndex)) {

                    // if first letter exists, call recursive function to check all 4 sides using backtracking to find if word exists
                    if (searchNext(board, word, currentRow, currentCol, currentIndex)) {
                        // we will need:
                        // 1. board
                        // 2. word
                        // 3. row and column at with the first character (currentIndex) was found
                        // 4. numberOfRows and Columns so that we don't have to check in new function again
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private boolean searchNext(char[][] board, String word, int row, int col, int currentIndex) {

        int numberOfRows = board.length; 
        int numberOfColumns = board[0].length;
        // base case: if the current index is euak to the length of the word, we have found the word
        if (currentIndex == word.length()) return true;

        // check for boundaries, and the character we currently have selected, is or is not the character required.
        if (row < 0 || 
            col < 0 || 
            row == numberOfRows || 
            col == numberOfColumns || 
            board[row][col] != word.charAt(currentIndex) || 
            board[row][col] == '!') {

            return false;
        }

        // prevent reusing the same character
        char c = board[row][col];
        board[row][col] = '!'; // marked as visited

        boolean topDirection = searchNext(board, word, row-1, col, currentIndex+1);
        boolean rightDirection = searchNext(board, word, row, col+1, currentIndex+1);
        boolean leftDirection = searchNext(board, word, row, col-1, currentIndex+1);
        boolean bottomDirection = searchNext(board, word, row+1, col, currentIndex+1);

        board[row][col] = c; // undo the change // idk why?

        return topDirection || rightDirection || leftDirection || bottomDirection;
    }

}
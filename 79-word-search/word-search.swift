class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        
        var board = board // making board mutable
        let wordArr = Array(word)
        let numberOfRows = board.count
        let numberOfCols = board[0].count

        for r in 0..<numberOfRows {
            for c in 0..<numberOfCols {
                if board[r][c] == wordArr[0] {
                    print("starting letter = \(board[r][c])")
                    // perform dfs from this letter
                    if dfs(
                    letterIndex: 0, 
                    rowIndexOfStartingLetter: r, 
                    colIndexOfStartingLetter: c, 
                    wordArr: wordArr, 
                    numberofRows: numberOfRows, 
                    numberOfCols: numberOfCols, 
                    board: &board
                    ) {
                        return true
                    }
                }
            }
        }
        return false
    }

    func dfs( letterIndex letterIndex: Int,
    rowIndexOfStartingLetter rowIndexOfLetter: Int, 
    colIndexOfStartingLetter colIndexOfLetter: Int,
    wordArr word: [Character],
    numberofRows numberOfRows: Int, 
    numberOfCols numberOfCols: Int, 
    board board: inout [[Character]]
    ) -> Bool {

        if letterIndex == word.count { return true } // if we reached the last letter of the word

        if rowIndexOfLetter < 0 || colIndexOfLetter < 0 ||
        rowIndexOfLetter >= numberOfRows || colIndexOfLetter >= numberOfCols || 
        board[rowIndexOfLetter][colIndexOfLetter] != word[letterIndex] { return false }

        // let startingLetter = 
        let temp = board[rowIndexOfLetter][colIndexOfLetter]
        board[rowIndexOfLetter][colIndexOfLetter] = "*" // visited first node

        // now search up, down, left and right
        var up: Bool = dfs(letterIndex: letterIndex + 1, 
        rowIndexOfStartingLetter: rowIndexOfLetter - 1, 
        colIndexOfStartingLetter: colIndexOfLetter, 
        wordArr: word, 
        numberofRows: numberOfRows, 
        numberOfCols: numberOfCols, 
        board: &board)

        var down: Bool = dfs(letterIndex: letterIndex + 1, 
        rowIndexOfStartingLetter: rowIndexOfLetter + 1, 
        colIndexOfStartingLetter: colIndexOfLetter, 
        wordArr: word, 
        numberofRows: numberOfRows, 
        numberOfCols: numberOfCols, 
        board: &board)

        var left: Bool = dfs(letterIndex: letterIndex + 1, 
        rowIndexOfStartingLetter: rowIndexOfLetter, 
        colIndexOfStartingLetter: colIndexOfLetter - 1, 
        wordArr: word, 
        numberofRows: numberOfRows, 
        numberOfCols: numberOfCols, 
        board: &board)

        var right: Bool = dfs(letterIndex: letterIndex + 1, 
        rowIndexOfStartingLetter: rowIndexOfLetter, 
        colIndexOfStartingLetter: colIndexOfLetter + 1, 
        wordArr: word, 
        numberofRows: numberOfRows, 
        numberOfCols: numberOfCols, 
        board: &board)

        board[rowIndexOfLetter][colIndexOfLetter] = temp

        // return up || down || left || right
        if up || down || left || right { return true }
        return false
    }
}
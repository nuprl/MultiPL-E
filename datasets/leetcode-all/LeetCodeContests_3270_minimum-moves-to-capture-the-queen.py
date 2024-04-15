def minMovesToCaptureTheQueen(a: int, b: int, c: int, d: int, e: int, f: int) -> int:
    """
    There is a 1-indexed 8 x 8 chessboard containing 3 pieces.
    You are given 6 integers a, b, c, d, e, and f where:
    
    (a, b) denotes the position of the white rook.
    (c, d) denotes the position of the white bishop.
    (e, f) denotes the position of the black queen.
    
    Given that you can only move the white pieces, return the minimum number of moves required to capture the black queen.
    Note that:
    
    Rooks can move any number of squares either vertically or horizontally, but cannot jump over other pieces.
    Bishops can move any number of squares diagonally, but cannot jump over other pieces.
    A rook or a bishop can capture the queen if it is located in a square that they can move to.
    The queen does not move.
    
    
    Example 1:
    
    
    Input: a = 1, b = 1, c = 8, d = 8, e = 2, f = 3
    Output: 2
    Explanation: We can capture the black queen in two moves by moving the white rook to (1, 3) then to (2, 3).
    It is impossible to capture the black queen in less than two moves since it is not being attacked by any of the pieces at the beginning.
    
    Example 2:
    
    
    Input: a = 5, b = 3, c = 3, d = 4, e = 5, f = 2
    Output: 1
    Explanation: We can capture the black queen in a single move by doing one of the following: 
    - Move the white rook to (5, 2).
    - Move the white bishop to (5, 2).
    
    
    Constraints:
    
    1 <= a, b, c, d, e, f <= 8
    No two pieces are on the same square.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(1, 1, 8, 8, 2, 3) == 2
    assert candidate(5, 3, 3, 4, 5, 2) == 1
    assert candidate(4, 3, 3, 4, 5, 2) == 2
    assert candidate(1, 1, 1, 4, 1, 8) == 2
    assert candidate(4, 3, 3, 4, 2, 5) == 1
    assert candidate(8, 4, 7, 5, 5, 5) == 2
    assert candidate(1, 8, 4, 3, 2, 7) == 2
    assert candidate(1, 6, 3, 3, 5, 6) == 1
    assert candidate(5, 3, 6, 6, 6, 4) == 2
    assert candidate(5, 1, 6, 6, 2, 7) == 2
    assert candidate(8, 4, 8, 8, 7, 7) == 1
    assert candidate(5, 1, 6, 5, 3, 7) == 2
    assert candidate(5, 2, 8, 6, 7, 4) == 2
    assert candidate(1, 1, 8, 2, 4, 1) == 1
    assert candidate(3, 1, 1, 1, 2, 5) == 2
    assert candidate(8, 5, 2, 4, 5, 7) == 1
    assert candidate(8, 1, 5, 8, 1, 7) == 2
    assert candidate(4, 6, 6, 2, 1, 4) == 2
    assert candidate(7, 5, 7, 6, 2, 8) == 2
    assert candidate(8, 6, 3, 2, 6, 8) == 2
    assert candidate(3, 3, 8, 1, 2, 5) == 2
    assert candidate(4, 5, 6, 1, 4, 7) == 1
    assert candidate(7, 2, 2, 8, 7, 3) == 1
    assert candidate(3, 8, 2, 7, 1, 4) == 2
    assert candidate(3, 5, 5, 3, 1, 8) == 2
    assert candidate(2, 2, 7, 4, 3, 1) == 2
    assert candidate(4, 3, 1, 5, 5, 3) == 1
    assert candidate(7, 5, 2, 5, 6, 3) == 2
    assert candidate(1, 7, 8, 1, 3, 4) == 2
    assert candidate(8, 6, 6, 4, 1, 2) == 2
    assert candidate(7, 8, 4, 4, 3, 6) == 2
    assert candidate(8, 4, 7, 7, 4, 4) == 1
    assert candidate(5, 7, 4, 2, 3, 8) == 2
    assert candidate(6, 1, 7, 8, 8, 7) == 1
    assert candidate(3, 7, 7, 6, 7, 4) == 2
    assert candidate(7, 3, 6, 4, 6, 7) == 2
    assert candidate(5, 7, 1, 1, 5, 6) == 1
    assert candidate(6, 8, 5, 8, 5, 3) == 2
    assert candidate(4, 2, 3, 7, 6, 1) == 2
    assert candidate(3, 2, 6, 1, 6, 2) == 1
    assert candidate(5, 4, 6, 7, 1, 8) == 2
    assert candidate(7, 6, 2, 3, 3, 4) == 1
    assert candidate(7, 6, 2, 1, 2, 6) == 1
    assert candidate(5, 8, 6, 5, 6, 1) == 2
    assert candidate(6, 2, 6, 7, 5, 4) == 2
    assert candidate(7, 5, 4, 4, 7, 4) == 1
    assert candidate(6, 1, 4, 4, 2, 2) == 1
    assert candidate(3, 4, 1, 8, 3, 7) == 1
    assert candidate(7, 7, 1, 6, 3, 1) == 2
    assert candidate(6, 8, 2, 2, 3, 5) == 2
    assert candidate(5, 5, 3, 7, 5, 3) == 1
    assert candidate(7, 3, 5, 3, 8, 5) == 2
    assert candidate(7, 4, 1, 4, 7, 8) == 1
    assert candidate(6, 3, 7, 3, 4, 4) == 2
    assert candidate(1, 4, 6, 7, 4, 4) == 1
    assert candidate(4, 5, 6, 8, 2, 1) == 2
    assert candidate(5, 6, 5, 7, 8, 3) == 2
    assert candidate(5, 1, 8, 2, 1, 3) == 2
    assert candidate(1, 2, 8, 3, 2, 2) == 1
    assert candidate(1, 7, 5, 5, 4, 3) == 2
    assert candidate(4, 3, 7, 8, 1, 5) == 2
    assert candidate(8, 7, 6, 8, 6, 1) == 2
    assert candidate(4, 3, 4, 7, 7, 6) == 2
    assert candidate(8, 4, 6, 6, 2, 1) == 2
    assert candidate(8, 2, 6, 4, 1, 4) == 2
    assert candidate(3, 5, 3, 2, 1, 4) == 1
    assert candidate(3, 6, 1, 3, 3, 7) == 1
    assert candidate(1, 1, 7, 6, 4, 3) == 1
    assert candidate(1, 8, 7, 2, 6, 1) == 1
    assert candidate(5, 8, 4, 5, 7, 4) == 2
    assert candidate(8, 3, 8, 8, 5, 3) == 1
    assert candidate(7, 2, 8, 1, 4, 3) == 2
    assert candidate(3, 5, 8, 7, 6, 1) == 2
    assert candidate(5, 5, 2, 2, 1, 1) == 1
    assert candidate(1, 8, 8, 4, 4, 7) == 2
    assert candidate(3, 6, 7, 6, 8, 8) == 2
    assert candidate(5, 6, 3, 7, 3, 6) == 1
    assert candidate(1, 5, 3, 4, 7, 4) == 2
    assert candidate(5, 6, 2, 2, 5, 8) == 1
    assert candidate(7, 3, 2, 6, 3, 4) == 2
    assert candidate(5, 4, 6, 5, 5, 8) == 1
    assert candidate(1, 1, 2, 4, 5, 4) == 2
    assert candidate(4, 5, 5, 4, 2, 4) == 2
    assert candidate(6, 5, 6, 2, 2, 2) == 2
    assert candidate(1, 5, 4, 2, 8, 1) == 2
    assert candidate(1, 1, 2, 5, 8, 1) == 1
    assert candidate(4, 8, 3, 8, 8, 5) == 2
    assert candidate(1, 8, 4, 7, 5, 6) == 1
    assert candidate(5, 5, 3, 6, 8, 8) == 2
    assert candidate(1, 2, 3, 1, 2, 4) == 2
    assert candidate(1, 8, 6, 3, 2, 8) == 1
    assert candidate(6, 1, 8, 8, 7, 3) == 2
    assert candidate(7, 8, 6, 1, 4, 2) == 2
    assert candidate(1, 6, 4, 2, 8, 5) == 2
    assert candidate(1, 4, 2, 5, 5, 4) == 1
    assert candidate(4, 4, 3, 2, 6, 7) == 2
    assert candidate(8, 3, 6, 7, 4, 6) == 2
    assert candidate(2, 5, 1, 1, 8, 4) == 2
    assert candidate(7, 8, 1, 4, 5, 1) == 2
    assert candidate(5, 5, 2, 1, 1, 1) == 2


def test_check():
    check(minMovesToCaptureTheQueen)


### Metadata below ###
# question_id = 3270
# question_title = Minimum Moves to Capture The Queen
# question_title_slug = minimum-moves-to-capture-the-queen
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 71
# question_dislikes = 115
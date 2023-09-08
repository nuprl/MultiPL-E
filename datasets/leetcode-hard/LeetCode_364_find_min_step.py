def find_min_step(board: str, hand: str) -> int:
    """
    You are playing a variation of the game Zuma.
    In this variation of Zuma, there is a single row of colored balls on a board, where each ball can be colored red 'R', yellow 'Y', blue 'B', green 'G', or white 'W'. You also have several colored balls in your hand.
    Your goal is to clear all of the balls from the board. On each turn:

    Pick any ball from your hand and insert it in between two balls in the row or on either end of the row.
    If there is a group of three or more consecutive balls of the same color, remove the group of balls from the board.

    If this removal causes more groups of three or more of the same color to form, then continue removing each group until there are none left.


    If there are no more balls on the board, then you win the game.
    Repeat this process until you either win or do not have any more balls in your hand.

    Given a string board, representing the row of balls on the board, and a string hand, representing the balls in your hand, return the minimum number of balls you have to insert to clear all the balls from the board. If you cannot clear all the balls from the board using the balls in your hand, return -1.
 
    Example 1:

    Input: board = "WRRBBW", hand = "RB"
    Output: -1
    Explanation: It is impossible to clear all the balls. The best you can do is:
    - Insert 'R' so the board becomes WRRRBBW. WRRRBBW -> WBBW.
    - Insert 'B' so the board becomes WBBBW. WBBBW -> WW.
    There are still balls remaining on the board, and you are out of balls to insert.
    Example 2:

    Input: board = "WWRRBBWW", hand = "WRBRW"
    Output: 2
    Explanation: To make the board empty:
    - Insert 'R' so the board becomes WWRRRBBWW. WWRRRBBWW -> WWBBWW.
    - Insert 'B' so the board becomes WWBBBWW. WWBBBWW -> WWWW -> empty.
    2 balls from your hand were needed to clear the board.

    Example 3:

    Input: board = "G", hand = "GGGGG"
    Output: 2
    Explanation: To make the board empty:
    - Insert 'G' so the board becomes GG.
    - Insert 'G' so the board becomes GGG. GGG -> empty.
    2 balls from your hand were needed to clear the board.

 
    Constraints:

    1 <= board.length <= 16
    1 <= hand.length <= 5
    board and hand consist of the characters 'R', 'Y', 'B', 'G', and 'W'.
    The initial row of balls on the board will not have any groups of three or more consecutive balls of the same color.

    """
    ### Canonical solution below ###
    from collections import Counter

    def find_min_step_helper(board, memo, hand):
        if not board:
            return 0
        if board in memo:
            return memo[board]

        result = float('inf')
        i = 0
        while i < len(board):
            j = i
            while j < len(board) and board[i] == board[j]:
                j += 1

            color = board[i]
            required = 3 - (j - i)
            if hand[color] >= required:
                hand[color] -= required
                next_board = board[:i] + board[j:]
                tmp = find_min_step_helper(next_board, memo, hand)
                if tmp != -1:
                    result = min(result, tmp + required)
                hand[color] += required
            i = j

        memo[board] = -1 if result == float('inf') else result
        return memo[board]

    hand_count = Counter(hand)
    memo = {}
    return find_min_step_helper(board, memo, hand_count)




### Unit tests below ###
def check(candidate):
	assert candidate("GRBGYRB", "GRBGYRB") == -1
	assert candidate("G", "GGGGG") == 2
	assert candidate("YGRBYGR", "YGRBYGR") == -1
	assert candidate("RGYBRGY", "RGYBRGY") == -1
	assert candidate("YBGYRBY", "YBGYRBY") == -1
	assert candidate("BGRYGBR", "BGRYGBR") == -1
	assert candidate("WYBWYBW", "WYBWYB") == -1
	assert candidate("YBGRBGY", "YBGRBGY") == -1
	assert candidate("WBYBRYW", "WBYBRYW") == -1
	assert candidate("RBYGRBG", "RBYGRBG") == -1
	assert candidate("YBRYBR", "YBRYBR") == -1
	assert candidate("WBRWYBW", "WBRWYB") == -1
	assert candidate("WRRBBW", "RB") == -1
	assert candidate("RBYGGRB", "RBYGGRB") == -1
	assert candidate("BGRYBGR", "BGRYBGR") == -1
	assert candidate("BGYRBGY", "BGYRBGY") == -1
	assert candidate("WBRYBWR", "WBRYBWR") == -1
def test_check():
	check(find_min_step)
# Metadata Difficulty: Hard
# Metadata Topics: string,dynamic-programming,stack,breadth-first-search,memoization
# Metadata Coverage: 100

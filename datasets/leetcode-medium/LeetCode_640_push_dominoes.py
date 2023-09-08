def push_dominoes(dominoes: str) -> str:
    """
    There are n dominoes in a line, and we place each domino vertically upright. In the beginning, we simultaneously push some of the dominoes either to the left or to the right.
    After each second, each domino that is falling to the left pushes the adjacent domino on the left. Similarly, the dominoes falling to the right push their adjacent dominoes standing on the right.
    When a vertical domino has dominoes falling on it from both sides, it stays still due to the balance of the forces.
    For the purposes of this question, we will consider that a falling domino expends no additional force to a falling or already fallen domino.
    You are given a string dominoes representing the initial state where:

    dominoes[i] = 'L', if the ith domino has been pushed to the left,
    dominoes[i] = 'R', if the ith domino has been pushed to the right, and
    dominoes[i] = '.', if the ith domino has not been pushed.

    Return a string representing the final state.
 
    Example 1:

    Input: dominoes = "RR.L"
    Output: "RR.L"
    Explanation: The first domino expends no additional force on the second domino.

    Example 2:


    Input: dominoes = ".L.R...LR..L.."
    Output: "LL.RR.LLRRLL.."

 
    Constraints:

    n == dominoes.length
    1 <= n <= 105
    dominoes[i] is either 'L', 'R', or '.'.

    """
    ### Canonical solution below ###
    prev, cur = None, dominoes
    while prev != cur:
        prev = cur
        cur_lst = list(prev)
        for i in range(len(cur)):
            if prev[i] == 'L' and i > 0 and prev[i - 1] == '.':
                cur_lst[i - 1] = 'L'
            elif prev[i] == 'R' and i < len(cur) - 1 and prev[i + 1] == '.':
                cur_lst[i + 1] = 'R'
        cur = ''.join(cur_lst)
    return cur




### Unit tests below ###
def check(candidate):
	assert candidate('RR..L') == 'RRRLL'
	assert candidate('LLRRLLLRRLLLRR') == 'LLRRLLLRRLLLRR'
	assert candidate(
    '..................') == '..................'
	assert candidate('.L') == 'LL'
	assert candidate('R..L.R') == 'RRLL.R'
	assert candidate('R..L') == 'RRLL'
	assert candidate('RL') == 'RL'
def test_check():
	check(push_dominoes)
# Metadata Difficulty: Medium
# Metadata Topics: two-pointers,string,dynamic-programming
# Metadata Coverage: 100

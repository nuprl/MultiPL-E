def furthestDistanceFromOrigin(moves: str) -> int:
    """
    You are given a string moves of length n consisting only of characters 'L', 'R', and '_'. The string represents your movement on a number line starting from the origin 0.
    
    In the ith move, you can choose one of the following directions:
    
     * move to the left if moves[i] = 'L' or moves[i] = '_'
     * move to the right if moves[i] = 'R' or moves[i] = '_'
    
    Return the distance from the origin of the furthest point you can get to after n moves.
    
    Example 1:
    
    Input: moves = "L_RL__R"
    Output: 3
    Explanation: The furthest point we can reach from the origin 0 is point -3 through the following sequence of moves "LLRLLLR".
    
    Example 2:
    
    Input: moves = "_R__LL_"
    Output: 5
    Explanation: The furthest point we can reach from the origin 0 is point -5 through the following sequence of moves "LRLLLLL".
    
    Example 3:
    
    Input: moves = "_______"
    Output: 7
    Explanation: The furthest point we can reach from the origin 0 is point 7 through the following sequence of moves "RRRRRRR".
    
    
    Constraints:
    
     * 1 <= moves.length == n <= 50
     * moves consists only of characters 'L', 'R' and '_'.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(L_RL__R) == 3
    assert candidate(_R__LL_) == 5
    assert candidate(_______) == 7
    assert candidate(L) == 1
    assert candidate(R) == 1
    assert candidate(_) == 1
    assert candidate(LL) == 2
    assert candidate(LR) == 0
    assert candidate(L_) == 2
    assert candidate(RL) == 0
    assert candidate(RR) == 2
    assert candidate(R_) == 2
    assert candidate(_L) == 2
    assert candidate(_R) == 2
    assert candidate(__) == 2
    assert candidate(LLL) == 3
    assert candidate(LLR) == 1
    assert candidate(LL_) == 3
    assert candidate(LRL) == 1
    assert candidate(LRR) == 1
    assert candidate(LR_) == 1
    assert candidate(L_L) == 3
    assert candidate(L_R) == 1
    assert candidate(L__) == 3
    assert candidate(RLL) == 1
    assert candidate(RLR) == 1
    assert candidate(RL_) == 1
    assert candidate(RRL) == 1
    assert candidate(RRR) == 3
    assert candidate(RR_) == 3
    assert candidate(R_L) == 1
    assert candidate(R_R) == 3
    assert candidate(R__) == 3
    assert candidate(_LL) == 3
    assert candidate(_LR) == 1
    assert candidate(_L_) == 3
    assert candidate(_RL) == 1
    assert candidate(_RR) == 3
    assert candidate(_R_) == 3
    assert candidate(__L) == 3
    assert candidate(__R) == 3
    assert candidate(___) == 3
    assert candidate(LLLL) == 4
    assert candidate(LLLR) == 2
    assert candidate(LLL_) == 4
    assert candidate(LLRL) == 2
    assert candidate(LLRR) == 0
    assert candidate(LLR_) == 2
    assert candidate(LL_L) == 4
    assert candidate(LL_R) == 2
    assert candidate(LL__) == 4
    assert candidate(LRLL) == 2
    assert candidate(LRLR) == 0
    assert candidate(LRL_) == 2
    assert candidate(LRRL) == 0
    assert candidate(LRRR) == 2
    assert candidate(LRR_) == 2
    assert candidate(LR_L) == 2
    assert candidate(LR_R) == 2
    assert candidate(LR__) == 2
    assert candidate(L_LL) == 4
    assert candidate(L_LR) == 2
    assert candidate(L_L_) == 4
    assert candidate(L_RL) == 2
    assert candidate(L_RR) == 2
    assert candidate(L_R_) == 2
    assert candidate(L__L) == 4
    assert candidate(L__R) == 2
    assert candidate(L___) == 4
    assert candidate(RLLL) == 2
    assert candidate(RLLR) == 0
    assert candidate(RLL_) == 2
    assert candidate(RLRL) == 0
    assert candidate(RLRR) == 2
    assert candidate(RLR_) == 2
    assert candidate(RL_L) == 2
    assert candidate(RL_R) == 2
    assert candidate(RL__) == 2
    assert candidate(RRLL) == 0
    assert candidate(RRLR) == 2
    assert candidate(RRL_) == 2
    assert candidate(RRRL) == 2
    assert candidate(RRRR) == 4
    assert candidate(RRR_) == 4
    assert candidate(RR_L) == 2
    assert candidate(RR_R) == 4
    assert candidate(RR__) == 4
    assert candidate(R_LL) == 2
    assert candidate(R_LR) == 2
    assert candidate(R_L_) == 2
    assert candidate(R_RL) == 2
    assert candidate(R_RR) == 4
    assert candidate(R_R_) == 4
    assert candidate(R__L) == 2
    assert candidate(R__R) == 4
    assert candidate(R___) == 4
    assert candidate(_LLL) == 4
    assert candidate(_LLR) == 2
    assert candidate(_LL_) == 4
    assert candidate(_LRL) == 2


def test_check():
    check(furthestDistanceFromOrigin)


### Metadata below ###
# question_id = 3019
# question_title = Furthest Point From Origin
# question_title_slug = furthest-point-from-origin
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 203
# question_dislikes = 29
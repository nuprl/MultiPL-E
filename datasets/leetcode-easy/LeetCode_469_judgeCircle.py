def judgeCircle(moves: str) -> bool:
    """
    There is a robot starting at the position (0, 0), the origin, on a 2D plane. Given a sequence of its moves, judge if this robot ends up at (0, 0) after it completes its moves.
    You are given a string moves that represents the move sequence of the robot where moves[i] represents its ith move. Valid moves are 'R' (right), 'L' (left), 'U' (up), and 'D' (down).
    Return true if the robot returns to the origin after it finishes all of its moves, or false otherwise.
    Note: The way that the robot is "facing" is irrelevant. 'R' will always make the robot move to the right once, 'L' will always make it move left, etc. Also, assume that the magnitude of the robot's movement is the same for each move.
 
    Example 1:

    Input: moves = "UD"
    Output: true
    Explanation: The robot moves up once, and then down once. All moves have the same magnitude, so it ended up at the origin where it started. Therefore, we return true.

    Example 2:

    Input: moves = "LL"
    Output: false
    Explanation: The robot moves left twice. It ends up two "moves" to the left of the origin. We return false because it is not at the origin at the end of its moves.

 
    Constraints:

    1 <= moves.length <= 2 * 104
    moves only contains the characters 'U', 'D', 'L' and 'R'.

    """
    ### Canonical solution below ###
    x, y = 0, 0
    for move in moves:
        if move == 'U':
            y += 1
        elif move == 'D':
            y -= 1
        elif move == 'R':
            x += 1
        elif move == 'L':
            x -= 1
    return x == 0 and y == 0




### Unit tests below ###
def check(candidate):
	assert candidate("LLLLLL") == False
	assert candidate("DDRR") == False
	assert candidate("DDDRLU") == False
	assert candidate("RRURRDDD") == False
	assert candidate("DR") == False
	assert candidate("RUUL") == False
	assert candidate("LR") == True
	assert candidate("UDDDU") == False
	assert candidate("UUU") == False
	assert candidate("LLLLR") == False
	assert candidate("LDRD") == False
	assert candidate("LLD") == False
	assert candidate("RDLU") == True
	assert candidate("LDRU") == True
	assert candidate("ULD") == False
	assert candidate("LRL") == False
	assert candidate("RRURRU") == False
	assert candidate("UUDUD") == False
	assert candidate("LLU") == False
	assert candidate("DLL") == False
	assert candidate("ULRRDDULR") == False
	assert candidate("L") == False
	assert candidate("RURDDD") == False
	assert candidate("UULDD") == False
	assert candidate("ULUL") == False
	assert candidate("RRDDDDLL") == False
	assert candidate("UUDDL") == False
	assert candidate("RRRL") == False
	assert candidate("UUDRLLRR") == False
	assert candidate("DDRRURRUL") == False
	assert candidate("UURRR") == False
	assert candidate("DDDRLD") == False
	assert candidate("UU") == False
	assert candidate("URRD") == False
	assert candidate("R") == False
	assert candidate("DDRD") == False
	assert candidate("UDRRR") == False
	assert candidate("UUDDRRLL") == True
	assert candidate("UUUUU") == False
	assert candidate("DDUDLLU") == False
	assert candidate("DLLRRU") == True
	assert candidate("LLRRRR") == False
	assert candidate("DDDLL") == False
	assert candidate("RRUUD") == False
	assert candidate("UUDU") == False
	assert candidate("DRLDR") == False
	assert candidate("RDRLL") == False
	assert candidate("RRLUUDLL") == False
	assert candidate("LLLLDLLD") == False
	assert candidate("RDL") == False
	assert candidate("RRR") == False
	assert candidate("UDLR") == True
	assert candidate("LD") == False
	assert candidate("LLDLL") == False
	assert candidate("RLRRUDRD") == False
	assert candidate("UUUDDD") == True
	assert candidate("RDDRUL") == False
	assert candidate("RLR") == False
	assert candidate("RDRDDDRR") == False
	assert candidate("UDUU") == False
	assert candidate("U") == False
	assert candidate("RRUULLDD") == True
	assert candidate("LL") == False
	assert candidate("RDUL") == True
	assert candidate("RRRDDDLL") == False
	assert candidate("UUDD") == True
	assert candidate("UUDRLL") == False
	assert candidate("UL") == False
	assert candidate("ULRRRRRRR") == False
	assert candidate("RLDDRR") == False
	assert candidate("LLDLLD") == False
	assert candidate("URRDU") == False
	assert candidate("DDLUR") == False
	assert candidate("UURRRRRRU") == False
	assert candidate("UDUDUDUD") == True
	assert candidate("DDLU") == False
	assert candidate("URRLU") == False
	assert candidate("LDRRLR") == False
	assert candidate("RRRRRDDU") == False
	assert candidate("DDDD") == False
	assert candidate("RRRRRRRRRL") == False
	assert candidate("RDRDL") == False
	assert candidate("UDU") == False
	assert candidate("RRL") == False
	assert candidate("UUD") == False
	assert candidate("UD") == True
	assert candidate("UDDDL") == False
	assert candidate("UDUL") == False
	assert candidate("RLDDUU") == True
	assert candidate("RU") == False
	assert candidate("RRLLRR") == False
	assert candidate("RRD") == False
	assert candidate("DDDL") == False
	assert candidate("RULR") == False
	assert candidate("RDDRR") == False
	assert candidate("URDL") == True
	assert candidate("RRRU") == False
	assert candidate("DDDDLLUURR") == False
	assert candidate("RDDRLR") == False
	assert candidate("RRLUUD") == False
	assert candidate("RR") == False
	assert candidate("DLLRR") == False
	assert candidate("DRRLRR") == False
	assert candidate("DDL") == False
	assert candidate("DDUDDU") == False
	assert candidate("") == True
	assert candidate("LLRR") == True
	assert candidate("DRUL") == True
	assert candidate("UUDDRLLRR") == False
	assert candidate("DDU") == False
	assert candidate("D") == False
	assert candidate("LDRLDDD") == False
	assert candidate("DRR") == False
	assert candidate("RRUUDDLL") == True
	assert candidate("ULL") == False
	assert candidate("RRDRLD") == False
	assert candidate("RLRR") == False
	assert candidate("DLD") == False
	assert candidate("DLLUDRRD") == False
	assert candidate("RRU") == False
	assert candidate("UUDUUD") == False
	assert candidate("UURUUR") == False
	assert candidate("UURRDDLL") == True
	assert candidate("RUURDDLLRR") == False
	assert candidate("LDL") == False
	assert candidate("RDDUURRL") == False
	assert candidate("UUR") == False
	assert candidate("RRDDLLUU") == True
	assert candidate("DRULRRUDD") == False
	assert candidate("RDD") == False
	assert candidate("LLDD") == False
	assert candidate("UR") == False
	assert candidate("RDRDDDL") == False
	assert candidate("LLL") == False
	assert candidate("UUDDLLRR") == True
	assert candidate("LLR") == False
def test_check():
	check(judgeCircle)
# Metadata Difficulty: Easy
# Metadata Topics: string,simulation
# Metadata Coverage: 100

def is_robot_bounded(instructions: str) -> bool:
    """
    On an infinite plane, a robot initially stands at (0, 0) and faces north. Note that:

    The north direction is the positive direction of the y-axis.
    The south direction is the negative direction of the y-axis.
    The east direction is the positive direction of the x-axis.
    The west direction is the negative direction of the x-axis.

    The robot can receive one of three instructions:

    "G": go straight 1 unit.
    "L": turn 90 degrees to the left (i.e., anti-clockwise direction).
    "R": turn 90 degrees to the right (i.e., clockwise direction).

    The robot performs the instructions given in order, and repeats them forever.
    Return true if and only if there exists a circle in the plane such that the robot never leaves the circle.
 
    Example 1:

    Input: instructions = "GGLLGG"
    Output: true
    Explanation: The robot is initially at (0, 0) facing the north direction.
    "G": move one step. Position: (0, 1). Direction: North.
    "G": move one step. Position: (0, 2). Direction: North.
    "L": turn 90 degrees anti-clockwise. Position: (0, 2). Direction: West.
    "L": turn 90 degrees anti-clockwise. Position: (0, 2). Direction: South.
    "G": move one step. Position: (0, 1). Direction: South.
    "G": move one step. Position: (0, 0). Direction: South.
    Repeating the instructions, the robot goes into the cycle: (0, 0) --> (0, 1) --> (0, 2) --> (0, 1) --> (0, 0).
    Based on that, we return true.

    Example 2:

    Input: instructions = "GG"
    Output: false
    Explanation: The robot is initially at (0, 0) facing the north direction.
    "G": move one step. Position: (0, 1). Direction: North.
    "G": move one step. Position: (0, 2). Direction: North.
    Repeating the instructions, keeps advancing in the north direction and does not go into cycles.
    Based on that, we return false.

    Example 3:

    Input: instructions = "GL"
    Output: true
    Explanation: The robot is initially at (0, 0) facing the north direction.
    "G": move one step. Position: (0, 1). Direction: North.
    "L": turn 90 degrees anti-clockwise. Position: (0, 1). Direction: West.
    "G": move one step. Position: (-1, 1). Direction: West.
    "L": turn 90 degrees anti-clockwise. Position: (-1, 1). Direction: South.
    "G": move one step. Position: (-1, 0). Direction: South.
    "L": turn 90 degrees anti-clockwise. Position: (-1, 0). Direction: East.
    "G": move one step. Position: (0, 0). Direction: East.
    "L": turn 90 degrees anti-clockwise. Position: (0, 0). Direction: North.
    Repeating the instructions, the robot goes into the cycle: (0, 0) --> (0, 1) --> (-1, 1) --> (-1, 0) --> (0, 0).
    Based on that, we return true.

 
    Constraints:

    1 <= instructions.length <= 100
    instructions[i] is 'G', 'L' or, 'R'.

    """
    ### Canonical solution below ###
    x, y, dir = 0, 0, 0
    moves = [(0, 1), (1, 0), (0, -1), (-1, 0)]

    for c in instructions:
        if c == 'G':
            x += moves[dir][0]
            y += moves[dir][1]
        elif c == 'L':
            dir = (dir + 3) % 4
        else:
            dir = (dir + 1) % 4

    return (x == 0 and y == 0) or dir != 0




### Unit tests below ###
def check(candidate):
	assert candidate("LLLL") == True
	assert candidate("L") == True
	assert candidate("GLGLG") == True
	assert candidate("GLG") == True
	assert candidate("GLGLGLG") == True
	assert candidate("GLGL") == True
	assert candidate("GLRG") == False
	assert candidate("G") == False
	assert candidate("RRRR") == True
	assert candidate("GL") == True
	assert candidate("R") == True
	assert candidate("GLRRGL") == False
	assert candidate("GLGLGLGL") == True
	assert candidate("GLRGGLRG") == False
	assert candidate("GLRR") == True
	assert candidate("GLLGLLGLLGLL") == True
	assert candidate("GG") == False
	assert candidate("GLR") == False
	assert candidate("GLL") == True
def test_check():
	check(is_robot_bounded)
# Metadata Difficulty: Medium
# Metadata Topics: math,string,simulation
# Metadata Coverage: 100

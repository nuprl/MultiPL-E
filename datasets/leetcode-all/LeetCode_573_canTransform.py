def canTransform(start: str, end: str) -> bool:
    """
    In a string composed of 'L', 'R', and 'X' characters, like "RXXLRXRXL", a move consists of either replacing one occurrence of "XL" with "LX", or replacing one occurrence of "RX" with "XR". Given the starting string start and the ending string end, return True if and only if there exists a sequence of moves to transform one string to the other.
 
    Example 1:

    Input: start = "RXXLRXRXL", end = "XRLXXRRLX"
    Output: true
    Explanation: We can transform start to end following these steps:
    RXXLRXRXL ->
    XRXLRXRXL ->
    XRLXRXRXL ->
    XRLXXRRXL ->
    XRLXXRRLX

    Example 2:

    Input: start = "X", end = "L"
    Output: false

 
    Constraints:

    1 <= start.length <= 104
    start.length == end.length
    Both start and end will only consist of characters in 'L', 'R', and 'X'.

    """
    ### Canonical solution below ###
    if len(start) != len(end):
        return False

    i, j = 0, 0
    n = len(start)
    while i < n and j < n:
        while i < n and start[i] == 'X':
            i += 1
        while j < n and end[j] == 'X':
            j += 1

        if start[i] != end[j]:
            return False

        if (start[i] == 'R' and i > j) or (start[i] == 'L' and i < j):
            return False

        i += 1
        j += 1
    return True




### Unit tests below ###
def check(candidate):
	assert candidate("LXXR", "LRXR") == False
	assert candidate("LXX", "XXL") == False
	assert candidate("RXXR", "RRXR") == False
	assert candidate("RLX", "LXR") == False
	assert candidate("RXLX", "XRXL") == False
	assert candidate("RLLX", "RRRR") == False
	assert candidate(
    "XLXLX",
    "XRXRX") == False
	assert candidate(
    "XRXXLXLXXXXRXXXXLXXL", "XXRXLXXLXXRLXXXLXXXX") == False
	assert candidate("LXR", "LXR") == True
	assert candidate("LR", "LR") == True
	assert candidate(
    "RLRR",
    "XRLL") == False
	assert candidate(
    "XLXRRXLX",
    "XXRXRXLX") == False
	assert candidate(
    "LLLX",
    "RRRR") == False
	assert candidate("RXLX", "RRXR") == False
	assert candidate("L", "L") == True
	assert candidate("RXLX", "RXRX") == False
	assert candidate(
    "XLRXXRRLX",
    "XRXXRRXL") == False
	assert candidate("", "") == True
	assert candidate("XRX", "RXX") == False
	assert candidate("LXRXL", "RXXLR") == False
	assert candidate("XL", "RX") == False
	assert candidate("R", "R") == True
	assert candidate("LRL", "RRL") == False
	assert candidate("RXLXR", "XRXLR") == False
	assert candidate(
    "RXLXLRLX",
    "XRXRXRXR") == False
	assert candidate(
    "LXRXLXL",
    "LXRXRXL") == False
	assert candidate(
    "LXRXXL",
    "RXLXXR") == False
	assert candidate("RXL", "XRR") == False
	assert candidate("XRRR", "RRRX") == False
	assert candidate("XXXR", "RXXX") == False
	assert candidate("XL", "XR") == False
	assert candidate(
    "XL",
    "RX") == False
	assert candidate("RLRX", "XRRL") == False
	assert candidate(
    "XLXRRLLLXLLKKKXLXXRXXXLXRXXXLXLXRXXLRXRXLXRXLLXLXRXXRRLRXLRLLXRRLXXRRRXRRXLXRRXXRXRRXRXRRLXRXLXLLXRXRRXLLXL",
    "XLLRRRRLRXRXLRXRXXLXLLRRXXLXLXRRXXLRRLRXLXRRXXRXRLXRXLLRXLXLLRXRRLXXLXXRLXLRLXXRRXLXRRLRRXRRLXLXRRLLRRXRLRXL"
) == False
	assert candidate(
    "LRLR",
    "LRLR") == True
	assert candidate("RXXLRXXL", "XRLXXLRX") == False
	assert candidate("XL", "LX") == True
	assert candidate("RL", "RL") == True
	assert candidate("RXLX", "XRXR") == False
	assert candidate("RXL", "RXL") == True
	assert candidate(
    "XRRXXLXLXXLXR",
    "RRRXLXXLXRXLX") == False
	assert candidate("XR", "RX") == False
	assert candidate("LXL", "LLX") == True
	assert candidate("XRL", "XRL") == True
	assert candidate("RXXLRXXL", "XRLXXRXL") == True
	assert candidate("XLX", "XXL") == False
def test_check():
	check(canTransform)
# Metadata Difficulty: Medium
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100

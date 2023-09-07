def square_is_white(coordinates: str) -> bool:
    """
    You are given coordinates, a string that represents the coordinates of a square of the chessboard. Below is a chessboard for your reference.

    Return true if the square is white, and false if the square is black.
    The coordinate will always represent a valid chessboard square. The coordinate will always have the letter first, and the number second.
 
    Example 1:

    Input: coordinates = "a1"
    Output: false
    Explanation: From the chessboard above, the square with coordinates "a1" is black, so return false.

    Example 2:

    Input: coordinates = "h3"
    Output: true
    Explanation: From the chessboard above, the square with coordinates "h3" is white, so return true.

    Example 3:

    Input: coordinates = "c7"
    Output: false

 
    Constraints:

    coordinates.length == 2
    'a' <= coordinates[0] <= 'h'
    '1' <= coordinates[1] <= '8'

    """
    ### Canonical solution below ###
    return (ord(coordinates[0]) - ord('a') + ord(coordinates[1]) - ord('1')) % 2 == 0




### Unit tests below ###
def check(candidate):
	assert candidate("a4") == False
	assert candidate("c8") == False
	assert candidate("a3") == True
	assert candidate("b3") == False
	assert candidate("e2") == False
	assert candidate("g1") == True
	assert candidate("d7") == False
	assert candidate("h4") == True
	assert candidate("d8") == True
	assert candidate("g4") == False
	assert candidate("h6") == True
	assert candidate("e5") == True
	assert candidate("i8") == False
	assert candidate("g2") == False
	assert candidate("f4") == True
	assert candidate("f8") == True
	assert candidate(("f5")) == False
	assert candidate("f3") == False
	assert candidate("h2") == True
	assert candidate(("e1")) == True
	assert candidate("e4") == False
	assert candidate("a5") == True
	assert candidate("c4") == False
	assert candidate(("a4")) == False
	assert candidate("z3") == False
	assert candidate("f5") == False
	assert candidate("a8") == False
	assert candidate(("c8")) == False
	assert candidate(("d3")) == False
	assert candidate("d4") == True
	assert candidate("e1") == True
	assert candidate("f1") == False
	assert candidate("a2") == False
	assert candidate(("a7")) == True
	assert candidate("b7") == False
	assert candidate(("d1")) == False
	assert candidate("h8") == True
	assert candidate("e7") == True
	assert candidate("d1") == False
	assert candidate(("a2")) == False
	assert candidate("b4") == True
	assert candidate("h1") == False
	assert candidate(("g4")) == False
	assert candidate("c2") == False
	assert candidate("b8") == True
	assert candidate("e8") == False
	assert candidate("i6") == False
	assert candidate("h3") == False
	assert candidate("d6") == True
	assert candidate("b2") == True
	assert candidate(("f6")) == True
	assert candidate("f2") == True
	assert candidate("d2") == True
	assert candidate("g3") == True
	assert candidate("i2") == False
	assert candidate("c6") == False
def test_check():
	check(square_is_white)
# Metadata Difficulty: Easy
# Metadata Topics: math,string
# Metadata Coverage: 100

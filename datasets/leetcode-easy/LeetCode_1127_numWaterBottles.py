def numWaterBottles(numBottles: int, numExchange: int) -> int:
    """
    There are numBottles water bottles that are initially full of water. You can exchange numExchange empty water bottles from the market with one full water bottle.
    The operation of drinking a full water bottle turns it into an empty bottle.
    Given the two integers numBottles and numExchange, return the maximum number of water bottles you can drink.
 
    Example 1:


    Input: numBottles = 9, numExchange = 3
    Output: 13
    Explanation: You can exchange 3 empty bottles to get 1 full water bottle.
    Number of water bottles you can drink: 9 + 3 + 1 = 13.

    Example 2:


    Input: numBottles = 15, numExchange = 4
    Output: 19
    Explanation: You can exchange 4 empty bottles to get 1 full water bottle. 
    Number of water bottles you can drink: 15 + 3 + 1 = 19.

 
    Constraints:

    1 <= numBottles <= 100
    2 <= numExchange <= 100

    """
    ### Canonical solution below ###
    totalBottles = numBottles
    while numBottles >= numExchange:
        newBottles = numBottles // numExchange
        totalBottles += newBottles
        numBottles = newBottles + numBottles % numExchange
    return totalBottles




### Unit tests below ###
def check(candidate):
	assert candidate(99, 3) == 148
	assert candidate(5, 3) == 7
	assert candidate(3, 2) == 5
	assert candidate(1, 2) == 1
	assert candidate(12, 4) == 15
	assert candidate(6, 4) == 7
	assert candidate(15, 3) == 22
	assert candidate(100, 5) == 124
	assert candidate(3, 3) == 4
	assert candidate(10, 2) == 19
	assert candidate(101, 4) == 134
	assert candidate(5, 5) == 6
	assert candidate(100, 2) == 199
	assert candidate(2, 2) == 3
	assert candidate(0, 5) == 0
	assert candidate(10, 20) == 10
	assert candidate(4, 3) == 5
	assert candidate(9, 3) == 13
	assert candidate(15, 4) == 19
	assert candidate(20, 5) == 24
def test_check():
	check(numWaterBottles)
# Metadata Difficulty: Easy
# Metadata Topics: math,simulation
# Metadata Coverage: 100

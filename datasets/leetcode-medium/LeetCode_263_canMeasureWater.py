def canMeasureWater(jug1Capacity: int, jug2Capacity: int, targetCapacity: int) -> bool:
    """
    You are given two jugs with capacities jug1Capacity and jug2Capacity liters. There is an infinite amount of water supply available. Determine whether it is possible to measure exactly targetCapacity liters using these two jugs.
    If targetCapacity liters of water are measurable, you must have targetCapacity liters of water contained within one or both buckets by the end.
    Operations allowed:

    Fill any of the jugs with water.
    Empty any of the jugs.
    Pour water from one jug into another till the other jug is completely full, or the first jug itself is empty.

 
    Example 1:

    Input: jug1Capacity = 3, jug2Capacity = 5, targetCapacity = 4
    Output: true
    Explanation: The famous Die Hard example 

    Example 2:

    Input: jug1Capacity = 2, jug2Capacity = 6, targetCapacity = 5
    Output: false

    Example 3:

    Input: jug1Capacity = 1, jug2Capacity = 2, targetCapacity = 3
    Output: true

 
    Constraints:

    1 <= jug1Capacity, jug2Capacity, targetCapacity <= 106

    """
    ### Canonical solution below ###
    def gcd(a, b):
        while b:
            a, b = b, a % b
        return a
    if targetCapacity > jug1Capacity + jug2Capacity:
        return False
    if jug1Capacity == targetCapacity or jug2Capacity == targetCapacity or jug1Capacity + jug2Capacity == targetCapacity:
        return True
    return targetCapacity % gcd(jug1Capacity, jug2Capacity) == 0




### Unit tests below ###
def check(candidate):
	assert candidate(3, 5, 6) == True
	assert candidate(5, 3, 4) == True
	assert candidate(1000000, 1000000, 1000001) == False
	assert candidate(5, 3, 5) == True
	assert candidate(11, 13, 23) == True
	assert candidate(5, 3, 7) == True
	assert candidate(3, 3, 4) == False
	assert candidate(5, 3, 9) == False
	assert candidate(2, 6, 4) == True
	assert candidate(2, 6, 5) == False
	assert candidate(11, 13, 1) == True
	assert candidate(3, 3, 8) == False
	assert candidate(13, 6, 10) == True
	assert candidate(5, 2, 4) == True
	assert candidate(7, 3, 2) == True
	assert candidate(5, 3, 6) == True
	assert candidate(11, 13, 12) == True
	assert candidate(2, 1, 1) == True
	assert candidate(11, 13, 27) == False
	assert candidate(13, 11, 6) == True
	assert candidate(1, 2, 1) == True
	assert candidate(13, 9, 4) == True
	assert candidate(1, 3, 3) == True
	assert candidate(1, 4, 4) == True
	assert candidate(5, 3, 2) == True
	assert candidate(1, 3, 1) == True
	assert candidate(3, 5, 5) == True
	assert candidate(5, 7, 12) == True
	assert candidate(3, 3, 6) == True
	assert candidate(3, 5, 1) == True
	assert candidate(3, 3, 5) == False
	assert candidate(13, 11, 4) == True
	assert candidate(13, 11, 8) == True
	assert candidate(1000000, 1000000, 1999999) == False
	assert candidate(5, 3, 3) == True
	assert candidate(3, 4, 5) == True
	assert candidate(11, 13, 7) == True
	assert candidate(1000000, 1000000, 2000000) == True
	assert candidate(3, 6, 4) == False
	assert candidate(11, 13, 3) == True
	assert candidate(13, 11, 5) == True
	assert candidate(3, 3, 3) == True
	assert candidate(6, 13, 10) == True
	assert candidate(11, 13, 26) == False
	assert candidate(1000000, 1000000, 999999) == False
	assert candidate(3, 5, 4) == True
	assert candidate(5, 3, 8) == True
	assert candidate(11, 13, 5) == True
	assert candidate(3, 5, 3) == True
	assert candidate(11, 13, 10) == True
	assert candidate(1, 2, 3) == True
	assert candidate(3, 5, 2) == True
	assert candidate(5, 3, 1) == True
	assert candidate(11, 13, 11) == True
	assert candidate(1, 2, 2) == True
	assert candidate(13, 11, 12) == True
	assert candidate(13, 11, 7) == True
	assert candidate(6, 9, 3) == True
	assert candidate(11, 13, 15) == True
	assert candidate(11, 13, 25) == False
	assert candidate(1, 3, 2) == True
	assert candidate(11, 13, 2) == True
	assert candidate(11, 13, 24) == True
	assert candidate(11, 13, 4) == True
	assert candidate(2, 2, 3) == False
	assert candidate(13, 11, 13) == True
	assert candidate(13, 11, 3) == True
def test_check():
	check(canMeasureWater)
# Metadata Difficulty: Medium
# Metadata Topics: math,depth-first-search,breadth-first-search
# Metadata Coverage: 100

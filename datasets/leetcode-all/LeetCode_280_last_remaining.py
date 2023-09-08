def last_remaining(n: int) -> int:
    """
    You have a list arr of all integers in the range [1, n] sorted in a strictly increasing order. Apply the following algorithm on arr:

    Starting from left to right, remove the first number and every other number afterward until you reach the end of the list.
    Repeat the previous step again, but this time from right to left, remove the rightmost number and every other number from the remaining numbers.
    Keep repeating the steps again, alternating left to right and right to left, until a single number remains.

    Given the integer n, return the last number that remains in arr.
 
    Example 1:

    Input: n = 9
    Output: 6
    Explanation:
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    arr = [2, 4, 6, 8]
    arr = [2, 6]
    arr = [6]

    Example 2:

    Input: n = 1
    Output: 1

 
    Constraints:

    1 <= n <= 109

    """
    ### Canonical solution below ###
    direction = True
    head = 1
    remaining = n
    step = 1

    while remaining > 1:
        if direction or remaining % 2 == 1:
            head += step
        remaining //= 2
        step *= 2
        direction = not direction

    return head




### Unit tests below ###
def check(candidate):
	assert candidate(100) == 54
	assert candidate(2) == 2
	assert candidate(10) == 8
	assert candidate(11) == 8
	assert candidate(8) == 6
	assert candidate(5) == 2
	assert candidate(1) == 1
	assert candidate(4) == 2
	assert candidate(12) == 6
	assert candidate(9) == 6
	assert candidate(3) == 2
	assert candidate(6) == 4
	assert candidate(7) == 4
def test_check():
	check(last_remaining)
# Metadata Difficulty: Medium
# Metadata Topics: math,recursion
# Metadata Coverage: 100

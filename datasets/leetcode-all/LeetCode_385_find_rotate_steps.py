def find_rotate_steps(ring: str, key: str) -> int:
    """
    In the video game Fallout 4, the quest "Road to Freedom" requires players to reach a metal dial called the "Freedom Trail Ring" and use the dial to spell a specific keyword to open the door.
    Given a string ring that represents the code engraved on the outer ring and another string key that represents the keyword that needs to be spelled, return the minimum number of steps to spell all the characters in the keyword.
    Initially, the first character of the ring is aligned at the "12:00" direction. You should spell all the characters in key one by one by rotating ring clockwise or anticlockwise to make each character of the string key aligned at the "12:00" direction and then by pressing the center button.
    At the stage of rotating the ring to spell the key character key[i]:

    You can rotate the ring clockwise or anticlockwise by one place, which counts as one step. The final purpose of the rotation is to align one of ring's characters at the "12:00" direction, where this character must equal key[i].
    If the character key[i] has been aligned at the "12:00" direction, press the center button to spell, which also counts as one step. After the pressing, you could begin to spell the next character in the key (next stage). Otherwise, you have finished all the spelling.

 
    Example 1:


    Input: ring = "godding", key = "gd"
    Output: 4
    Explanation:
    For the first key character 'g', since it is already in place, we just need 1 step to spell this character. 
    For the second key character 'd', we need to rotate the ring "godding" anticlockwise by two steps to make it become "ddinggo".
    Also, we need 1 more step for spelling.
    So the final output is 4.

    Example 2:

    Input: ring = "godding", key = "godding"
    Output: 13

 
    Constraints:

    1 <= ring.length, key.length <= 100
    ring and key consist of only lower case English letters.
    It is guaranteed that key could always be spelled by rotating ring.

    """
    ### Canonical solution below ###
    n, m = len(ring), len(key)
    dp = [[0] * n for _ in range(m + 1)]

    for i in range(m - 1, -1, -1):
        for j in range(n):
            dp[i][j] = float('inf')
            for k in range(n):
                if ring[k] == key[i]:
                    diff = abs(j - k)
                    step = min(diff, n - diff)
                    dp[i][j] = min(dp[i][j], step + dp[i + 1][k])

    return dp[0][0] + m




### Unit tests below ###
def check(candidate):
	assert candidate("abc", "c") == 2
	assert candidate("abcde", "ba") == 4
	assert candidate("godding", "gd") == 4
	assert candidate(
    "godding",
    "godding") == 13
	assert candidate("abcde", "c") == 3
	assert candidate("godding", "godding") == 13
	assert candidate("x", "x") == 1
def test_check():
	check(find_rotate_steps)
# Metadata Difficulty: Hard
# Metadata Topics: string,dynamic-programming,depth-first-search,breadth-first-search
# Metadata Coverage: 100

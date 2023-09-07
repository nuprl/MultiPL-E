def predict_party_victory(senate: str) -> str:
    """
    In the world of Dota2, there are two parties: the Radiant and the Dire.
    The Dota2 senate consists of senators coming from two parties. Now the Senate wants to decide on a change in the Dota2 game. The voting for this change is a round-based procedure. In each round, each senator can exercise one of the two rights:

    Ban one senator's right: A senator can make another senator lose all his rights in this and all the following rounds.
    Announce the victory: If this senator found the senators who still have rights to vote are all from the same party, he can announce the victory and decide on the change in the game.

    Given a string senate representing each senator's party belonging. The character 'R' and 'D' represent the Radiant party and the Dire party. Then if there are n senators, the size of the given string will be n.
    The round-based procedure starts from the first senator to the last senator in the given order. This procedure will last until the end of voting. All the senators who have lost their rights will be skipped during the procedure.
    Suppose every senator is smart enough and will play the best strategy for his own party. Predict which party will finally announce the victory and change the Dota2 game. The output should be "Radiant" or "Dire".
 
    Example 1:

    Input: senate = "RD"
    Output: "Radiant"
    Explanation: 
    The first senator comes from Radiant and he can just ban the next senator's right in round 1. 
    And the second senator can't exercise any rights anymore since his right has been banned. 
    And in round 2, the first senator can just announce the victory since he is the only guy in the senate who can vote.

    Example 2:

    Input: senate = "RDD"
    Output: "Dire"
    Explanation: 
    The first senator comes from Radiant and he can just ban the next senator's right in round 1. 
    And the second senator can't exercise any rights anymore since his right has been banned. 
    And the third senator comes from Dire and he can ban the first senator's right in round 1. 
    And in round 2, the third senator can just announce the victory since he is the only guy in the senate who can vote.

 
    Constraints:

    n == senate.length
    1 <= n <= 104
    senate[i] is either 'R' or 'D'.

    """
    ### Canonical solution below ###
    from collections import deque
    radiant = deque()
    dire = deque()
    n = len(senate)

    for i, s in enumerate(senate):
        if s == 'R':
            radiant.append(i)
        else:
            dire.append(i)

    while radiant and dire:
        r = radiant.popleft()
        d = dire.popleft()

        if r < d:
            radiant.append(r + n)
        else:
            dire.append(d + n)

    return "Dire" if not radiant else "Radiant"




### Unit tests below ###
def check(candidate):
	assert candidate("DRDRDRDRDRRRRRDDRDRRDDD") == "Radiant"
	assert candidate("RDRDRD") == "Radiant"
	assert candidate("RRDDDRDRR") == "Radiant"
	assert candidate("R") == "Radiant"
	assert candidate("DRRRDRDDDRRRRRDDDDRRR") == "Radiant"
	assert candidate("RDDRDDRRR") == "Radiant"
	assert candidate("RDDDRDRDRDDDRRRRRRRRRDRRRRRRRRRRRRRRRRRRRRRDD") == "Radiant"
	assert candidate("RRRRRRRRRR") == "Radiant"
	assert candidate("DDRRRRRDDDRRRRDRDDRR") == "Radiant"
	assert candidate("RDR") == "Radiant"
	assert candidate("DDRRRDRDDRRRRDRRDDRRRRR") == "Radiant"
	assert candidate("RDDRRDDRRRD") == "Radiant"
	assert candidate("RRDDDD") == "Dire"
	assert candidate("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD") == "Dire"
	assert candidate("DRD") == "Dire"
	assert candidate("D") == "Dire"
	assert candidate("RRRRDRDDRR") == "Radiant"
	assert candidate("DRRDR") == "Radiant"
	assert candidate("RRRDRDDDR") == "Radiant"
	assert candidate("DRRRRRDDDDDR") == "Radiant"
	assert candidate("RRRRRRRRDDDDDDDD") == "Radiant"
	assert candidate("RD") == "Radiant"
	assert candidate("RDD") == "Dire"
	assert candidate("RRRRRRRRR") == "Radiant"
	assert candidate("RRRRDDDD") == "Radiant"
	assert candidate("DDR") == "Dire"
	assert candidate("RRDDDR") == "Radiant"
	assert candidate("RDDDR") == "Dire"
	assert candidate("RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR") == "Radiant"
	assert candidate("RDRDRDRDRDRDRDRD") == "Radiant"
	assert candidate("RDRRDDRDD") == "Radiant"
	assert candidate("RRDDRRDDDDRRDDDRRRDDD") == "Dire"
	assert candidate("DDRRRRRRR") == "Radiant"
	assert candidate("RRRRRRRRRRRRRRRRDDDDDDDDDDDDDDDD") == "Radiant"
	assert candidate("RDDRRRRD") == "Radiant"
	assert candidate("DDDRR") == "Dire"
	assert candidate("RRDRDDRDRDDRDRD") == "Radiant"
	assert candidate("DDDRRRRR") == "Radiant"
	assert candidate("RDDR") == "Radiant"
	assert candidate("DRDRRRRR") == "Radiant"
	assert candidate("RRRDDRRRRDDRRRRDDDDDDRRRRRDDDDRRRRRDDDD") == "Radiant"
	assert candidate("RRRRDRRDD") == "Radiant"
def test_check():
	check(predict_party_victory)
# Metadata Difficulty: Medium
# Metadata Topics: string,greedy,queue
# Metadata Coverage: 100

from typing import List


def rank_teams(votes: List[str]) -> str:
    """
    In a special ranking system, each voter gives a rank from highest to lowest to all teams participating in the competition.
    The ordering of teams is decided by who received the most position-one votes. If two or more teams tie in the first position, we consider the second position to resolve the conflict, if they tie again, we continue this process until the ties are resolved. If two or more teams are still tied after considering all positions, we rank them alphabetically based on their team letter.
    You are given an array of strings votes which is the votes of all voters in the ranking systems. Sort all teams according to the ranking system described above.
    Return a string of all teams sorted by the ranking system.
 
    Example 1:

    Input: votes = ["ABC","ACB","ABC","ACB","ACB"]
    Output: "ACB"
    Explanation: 
    Team A was ranked first place by 5 voters. No other team was voted as first place, so team A is the first team.
    Team B was ranked second by 2 voters and ranked third by 3 voters.
    Team C was ranked second by 3 voters and ranked third by 2 voters.
    As most of the voters ranked C second, team C is the second team, and team B is the third.

    Example 2:

    Input: votes = ["WXYZ","XYZW"]
    Output: "XWYZ"
    Explanation:
    X is the winner due to the tie-breaking rule. X has the same votes as W for the first position, but X has one vote in the second position, while W does not have any votes in the second position. 

    Example 3:

    Input: votes = ["ZMNAGUEDSJYLBOPHRQICWFXTVK"]
    Output: "ZMNAGUEDSJYLBOPHRQICWFXTVK"
    Explanation: Only one voter, so their votes are used for the ranking.

 
    Constraints:

    1 <= votes.length <= 1000
    1 <= votes[i].length <= 26
    votes[i].length == votes[j].length for 0 <= i, j < votes.length.
    votes[i][j] is an English uppercase letter.
    All characters of votes[i] are unique.
    All the characters that occur in votes[0] also occur in votes[j] where 1 <= j < votes.length.

    """
    ### Canonical solution below ###
    teams = len(votes[0])
    ranks = [[0] * teams for _ in range(26)]

    for vote in votes:
        for i in range(teams):
            ranks[ord(vote[i]) - ord('A')][i] += 1

    result = list(votes[0])
    result.sort(key=lambda ch: tuple([-ranks[ord(ch) - ord('A')][i] for i in range(teams)] + [ch]))
    return ''.join(result)




### Unit tests below ###
def check(candidate):
	assert candidate(["ABCD", "BCDA", "CDAB", "DABC", "ABCD", "BCDA", "CDAB", "DABC", "ABCD", "BCDA", "CDAB", "DABC"]) == "ABCD"
	assert candidate(["ZMNAGUEDSJYLBOPHRQICWFXTVK", "ZMNAGUEDSJYLBOPHRQICWFXTVK", "ZMNAGUEDSJYLBOPHRQICWFXTVK"]) == "ZMNAGUEDSJYLBOPHRQICWFXTVK"
	assert candidate(["BCA", "CAB", "CBA", "ABC", "ACB", "BAC"]) == "ABC"
	assert candidate(["ABC", "ACB", "ABC", "ACB", "ACB"]) == "ACB"
	assert candidate(["GFEDCBA"]) == "GFEDCBA"
	assert candidate(["BCA", "CAB", "CBA", "ABC", "ACB", "BAC", "BCA", "CAB", "CBA", "ABC", "ACB", "BAC"]) == "ABC"
	assert candidate(["MNO", "NOM", "ONM", "MNO", "NOM", "ONM", "MNO", "NOM", "ONM"]) == "NOM"
	assert candidate(["ZMNAGUEDSJYLBOPHRQICWFXTVK"]) == "ZMNAGUEDSJYLBOPHRQICWFXTVK"
	assert candidate(["WXYZ", "XYZW"]) == "XWYZ"
	assert candidate(["ABCD", "BCDA", "CDAB", "DABC", "ABCD", "BCDA", "CDAB", "DABC"]) == "ABCD"
	assert candidate(["ZYX", "YXZ", "XYZ", "YXZ", "XYZ"]) == "YXZ"
	assert candidate(["WXYZ", "XYZW", "WXYZ", "XYZW", "WXYZ", "XYZW", "WXYZ", "XYZW", "WXYZ", "XYZW"]) == "XWYZ"
	assert candidate(["FED", "DEF", "EFD", "FDE", "DFE", "EDF"]) == "DEF"
def test_check():
	check(rank_teams)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,string,sorting,counting
# Metadata Coverage: 100

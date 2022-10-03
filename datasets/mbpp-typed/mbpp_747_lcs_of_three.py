from typing import List, Dict, Tuple

def lcs_of_three(X: str, Y: str, Z: str) -> int:
    """
	Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('AGGT12', '12TXAYB', '12XBA') == 2
    assert candidate('Reels', 'Reelsfor', 'ReelsforReels') == 5
    assert candidate('abcd1e2', 'bc12ea', 'bd1ea') == 3

def test_check():
    check(lcs_of_three)


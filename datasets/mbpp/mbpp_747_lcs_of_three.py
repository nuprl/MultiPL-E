def lcs_of_three(X, Y, Z):
	'''
	Write a function to find the longest common subsequence for the given three string sequence. https://www.geeksforgeeks.org/lcs-longest-common-subsequence-three-strings/
	'''
	pass

def check(candidate):
	assert candidate('AGGT12', '12TXAYB', '12XBA') == 2
	assert candidate('Reels', 'Reelsfor', 'ReelsforReels') == 5
	assert candidate('abcd1e2', 'bc12ea', 'bd1ea') == 3

def test_check():
	check(lcs_of_three)
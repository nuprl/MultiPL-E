def count_no_of_ways(n, k):
	'''
	Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
	'''
	pass

def check(candidate):
	assert candidate(2, 4) == 16
	assert candidate(3, 2) == 6
	assert candidate(4, 4) == 228

def test_check():
	check(count_no_of_ways)
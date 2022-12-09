def cummulative_sum(test_list):
	'''
	Write a function to find the cumulative sum of all the values that are present in the given list of lists.
	'''
	pass

def check(candidate):
	assert candidate([[1, 3], [5, 6, 7], [2, 6]]) == 30
	assert candidate([[2, 4], [6, 7, 8], [3, 7]]) == 37
	assert candidate([[3, 5], [7, 8, 9], [4, 8]]) == 44

def test_check():
	check(cummulative_sum)
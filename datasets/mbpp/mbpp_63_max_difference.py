def max_difference(test_list):
	'''
	Write a function to find the maximum difference between available pairs in the given tuple list.
	'''
	pass

def check(candidate):
	assert candidate([(3, 5), (1, 7), (10, 3), (1, 2)]) == 7
	assert candidate([(4, 6), (2, 17), (9, 13), (11, 12)]) == 15
	assert candidate([(12, 35), (21, 27), (13, 23), (41, 22)]) == 23

def test_check():
	check(max_difference)
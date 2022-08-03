def find_tuples(test_list, K):
	'''
	Write a function to find tuples which have all elements divisible by k from the given list of tuples.
	'''
	pass

def check(candidate):
	assert candidate([(6, 24, 12), (7, 9, 6), (12, 18, 21)], 6) == [(6, 24, 12)]
	assert candidate([(5, 25, 30), (4, 2, 3), (7, 8, 9)], 5) == [(5, 25, 30)]
	assert candidate([(7, 9, 16), (8, 16, 4), (19, 17, 18)], 4) == [(8, 16, 4)]

def test_check():
	check(find_tuples)
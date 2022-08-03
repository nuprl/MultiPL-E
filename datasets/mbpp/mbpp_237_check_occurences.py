def check_occurences(test_list):
	'''
	Write a function that takes in a list of tuples and returns a dictionary mapping each unique tuple to the number of times it occurs in the list.
	'''
	pass

def check(candidate):
	assert candidate([(3, 1), (1, 3), (2, 5), (5, 2), (6, 3)] ) == {(1, 3): 2, (2, 5): 2, (3, 6): 1}
	assert candidate([(4, 2), (2, 4), (3, 6), (6, 3), (7, 4)] ) == {(2, 4): 2, (3, 6): 2, (4, 7): 1}
	assert candidate([(13, 2), (11, 23), (12, 25), (25, 12), (16, 23)] ) == {(2, 13): 1, (11, 23): 1, (12, 25): 2, (16, 23): 1}

def test_check():
	check(check_occurences)
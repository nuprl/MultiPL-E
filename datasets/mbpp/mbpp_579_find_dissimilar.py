def find_dissimilar(test_tup1, test_tup2):
	'''
	Write a function to find the dissimilar elements in the given two tuples.
	'''
	pass

def check(candidate):
	assert candidate((3, 4, 5, 6), (5, 7, 4, 10)) == (3, 6, 7, 10)
	assert candidate((1, 2, 3, 4), (7, 2, 3, 9)) == (1, 4, 7, 9)
	assert candidate((21, 11, 25, 26), (26, 34, 21, 36)) == (34, 36, 11, 25)

def test_check():
	check(find_dissimilar)
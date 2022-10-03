def and_tuples(test_tup1, test_tup2):
	'''
	Write a function to extract the elementwise and tuples from the given two tuples.
	'''
	pass

def check(candidate):
	assert candidate((10, 4, 6, 9), (5, 2, 3, 3)) == (0, 0, 2, 1)
	assert candidate((1, 2, 3, 4), (5, 6, 7, 8)) == (1, 2, 3, 0)
	assert candidate((8, 9, 11, 12), (7, 13, 14, 17)) == (0, 9, 10, 0)

def test_check():
	check(and_tuples)
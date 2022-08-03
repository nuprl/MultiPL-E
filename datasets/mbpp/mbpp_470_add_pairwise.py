def add_pairwise(test_tup):
	'''
	Write a function to find the pairwise addition of the neighboring elements of the given tuple.
	'''
	pass

def check(candidate):
	assert candidate((1, 5, 7, 8, 10)) == (6, 12, 15, 18)
	assert candidate((2, 6, 8, 9, 11)) == (8, 14, 17, 20)
	assert candidate((3, 7, 9, 10, 12)) == (10, 16, 19, 22)

def test_check():
	check(add_pairwise)
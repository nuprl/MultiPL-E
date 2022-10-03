def bitwise_xor(test_tup1, test_tup2):
	'''
	Write a function to perform the mathematical bitwise xor operation across the given tuples.
	'''
	pass

def check(candidate):
	assert candidate((10, 4, 6, 9), (5, 2, 3, 3)) == (15, 6, 5, 10)
	assert candidate((11, 5, 7, 10), (6, 3, 4, 4)) == (13, 6, 3, 14)
	assert candidate((12, 6, 8, 11), (7, 4, 5, 6)) == (11, 2, 13, 13)

def test_check():
	check(bitwise_xor)
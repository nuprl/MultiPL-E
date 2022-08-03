def tuple_str_int(test_str):
	'''
	Write a function to convert tuple string to integer tuple.
	'''
	pass

def check(candidate):
	assert candidate("(7, 8, 9)") == (7, 8, 9)
	assert candidate("(1, 2, 3)") == (1, 2, 3)
	assert candidate("(4, 5, 6)") == (4, 5, 6)
	assert candidate("(7, 81, 19)") == (7, 81, 19)

def test_check():
	check(tuple_str_int)
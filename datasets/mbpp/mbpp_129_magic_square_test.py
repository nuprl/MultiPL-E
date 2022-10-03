def magic_square_test(my_matrix):
	'''
	Write a function to calculate whether the matrix is a magic square.
	'''
	pass

def check(candidate):
	assert candidate([[7, 12, 1, 14], [2, 13, 8, 11], [16, 3, 10, 5], [9, 6, 15, 4]])==True
	assert candidate([[2, 7, 6], [9, 5, 1], [4, 3, 8]])==True
	assert candidate([[2, 7, 6], [9, 5, 1], [4, 3, 7]])==False

def test_check():
	check(magic_square_test)
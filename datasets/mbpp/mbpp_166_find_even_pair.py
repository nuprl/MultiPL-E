def find_even_pair(A):
	'''
	Write a function that counts the number of pairs of integers in a list that xor to an even number.
	'''
	pass

def check(candidate):
	assert candidate([5, 4, 7, 2, 1]) == 4
	assert candidate([7, 2, 8, 1, 0, 5, 11]) == 9
	assert candidate([1, 2, 3]) == 1

def test_check():
	check(find_even_pair)
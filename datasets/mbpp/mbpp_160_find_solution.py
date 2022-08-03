def find_solution(a, b, n):
	'''
	Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists.
	'''
	pass

def check(candidate):
	assert candidate(2, 3, 7) == (2, 1)
	assert candidate(4, 2, 7) == None
	assert candidate(1, 13, 17) == (4, 1)

def test_check():
	check(find_solution)
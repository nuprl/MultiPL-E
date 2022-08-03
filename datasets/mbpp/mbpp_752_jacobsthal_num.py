def jacobsthal_num(n):
	'''
	Write a function to find the nth jacobsthal number. https://www.geeksforgeeks.org/jacobsthal-and-jacobsthal-lucas-numbers/ 0, 1, 1, 3, 5, 11, 21, 43, 85, 171, 341, 683, 1365, 2731, ...
	'''
	pass

def check(candidate):
	assert candidate(5) == 11
	assert candidate(2) == 1
	assert candidate(4) == 5
	assert candidate(13) == 2731

def test_check():
	check(jacobsthal_num)
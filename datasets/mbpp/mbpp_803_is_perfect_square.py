def is_perfect_square(n) :
	'''
	Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/
	'''
	pass

def check(candidate):
	assert candidate(10) == False
	assert candidate(36) == True
	assert candidate(14) == False
	assert candidate(196) == True
	assert candidate(125) == False
	assert candidate(15625) == True

def test_check():
	check(is_perfect_square)
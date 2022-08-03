def is_Sum_Of_Powers_Of_Two(n):
	'''
	Write a python function to check whether the given number can be represented as sum of non-zero powers of 2 or not.
	'''
	pass

def check(candidate):
	assert candidate(10) == True
	assert candidate(7) == False
	assert candidate(14) == True

def test_check():
	check(is_Sum_Of_Powers_Of_Two)
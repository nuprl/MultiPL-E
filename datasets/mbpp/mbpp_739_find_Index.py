def find_Index(n):
	'''
	Write a python function to find the index of smallest triangular number with n digits. https://www.geeksforgeeks.org/index-of-smallest-triangular-number-with-n-digits/
	'''
	pass

def check(candidate):
	assert candidate(2) == 4
	assert candidate(3) == 14
	assert candidate(4) == 45

def test_check():
	check(find_Index)
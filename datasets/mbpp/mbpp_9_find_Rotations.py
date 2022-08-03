def find_Rotations(str):
	'''
	Write a python function to find the minimum number of rotations (greater than 0) required to get the same string.
	'''
	pass

def check(candidate):
	assert candidate("aaaa") == 1
	assert candidate("ab") == 2
	assert candidate("abc") == 3

def test_check():
	check(find_Rotations)
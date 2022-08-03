def find_Parity(x):
	'''
	Write a python function to find whether the parity of a given number is odd.
	'''
	pass

def check(candidate):
	assert candidate(12) == False
	assert candidate(7) == True
	assert candidate(10) == False

def test_check():
	check(find_Parity)
def validate(n):
	'''
	Write a python function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
	'''
	pass

def check(candidate):
	assert candidate(1234) == True
	assert candidate(51241) == False
	assert candidate(321) == True

def test_check():
	check(validate)
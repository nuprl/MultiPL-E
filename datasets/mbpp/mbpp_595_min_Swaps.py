def min_Swaps(str1,str2) :
	'''
	Write a python function to count minimum number of swaps required to convert one binary number represented as a string to another.
	'''
	pass

def check(candidate):
	assert candidate("1101","1110") == 1
	assert candidate("111","000") == "Not Possible"
	assert candidate("111","110") == "Not Possible"

def test_check():
	check(min_Swaps)
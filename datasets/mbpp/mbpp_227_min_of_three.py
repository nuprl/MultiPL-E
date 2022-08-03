def min_of_three(a,b,c):
	'''
	Write a function to find minimum of three numbers.
	'''
	pass

def check(candidate):
	assert candidate(10,20,0)==0
	assert candidate(19,15,18)==15
	assert candidate(-10,-20,-30)==-30

def test_check():
	check(min_of_three)
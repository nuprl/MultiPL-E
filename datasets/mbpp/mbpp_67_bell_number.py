def bell_number(n):
	'''
	Write a function to find the number of ways to partition a set of Bell numbers.
	'''
	pass

def check(candidate):
	assert candidate(2)==2
	assert candidate(10)==115975
	assert candidate(56)==6775685320645824322581483068371419745979053216268760300

def test_check():
	check(bell_number)
def get_max_sum (n):
	'''
	Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
	'''
	pass

def check(candidate):
	assert candidate(60) == 106
	assert candidate(10) == 12
	assert candidate(2) == 2

def test_check():
	check(get_max_sum)
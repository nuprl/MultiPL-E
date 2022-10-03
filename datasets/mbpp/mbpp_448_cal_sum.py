def cal_sum(n):
	'''
	Write a function to calculate the sum of perrin numbers.
	'''
	pass

def check(candidate):
	assert candidate(9) == 49
	assert candidate(10) == 66
	assert candidate(11) == 88

def test_check():
	check(cal_sum)
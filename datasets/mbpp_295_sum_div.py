def sum_div(number):
	'''
	Write a function to return the sum of all divisors of a number.
	'''
	pass

def check(candidate):
	assert candidate(8)==7
	assert candidate(12)==16
	assert candidate(7)==1

def test_check():
	check(sum_div)
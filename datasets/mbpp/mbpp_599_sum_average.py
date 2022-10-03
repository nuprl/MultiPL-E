def sum_average(number):
	'''
	Write a function to find sum and average of first n natural numbers.
	'''
	pass

def check(candidate):
	assert candidate(10)==(55, 5.5)
	assert candidate(15)==(120, 8.0)
	assert candidate(20)==(210, 10.5)

def test_check():
	check(sum_average)
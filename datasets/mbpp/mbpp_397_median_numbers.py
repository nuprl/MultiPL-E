def median_numbers(a,b,c):
	'''
	Write a function to find the median of three numbers.
	'''
	pass

def check(candidate):
	assert candidate(25,55,65)==55.0
	assert candidate(20,10,30)==20.0
	assert candidate(15,45,75)==45.0

def test_check():
	check(median_numbers)
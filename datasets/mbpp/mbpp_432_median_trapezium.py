def median_trapezium(base1,base2,height):
	'''
	Write a function to find the median length of a trapezium.
	'''
	pass

def check(candidate):
	assert candidate(15,25,35)==20
	assert candidate(10,20,30)==15
	assert candidate(6,9,4)==7.5

def test_check():
	check(median_trapezium)
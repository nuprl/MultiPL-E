def min_val(listval):
	'''
	Write a function to find the minimum value in a given heterogeneous list.
	'''
	pass

def check(candidate):
	assert candidate(['Python', 3, 2, 4, 5, 'version'])==2
	assert candidate(['Python', 15, 20, 25])==15
	assert candidate(['Python', 30, 20, 40, 50, 'version'])==20

def test_check():
	check(min_val)
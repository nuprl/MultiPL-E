def max_val(listval):
	'''
	Write a function to find the maximum value in a given heterogeneous list.
	'''
	pass

def check(candidate):
	assert candidate(['Python', 3, 2, 4, 5, 'version'])==5
	assert candidate(['Python', 15, 20, 25])==25
	assert candidate(['Python', 30, 20, 40, 50, 'version'])==50

def test_check():
	check(max_val)
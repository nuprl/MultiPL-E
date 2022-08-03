def check_monthnumb_number(monthnum2):
	'''
	Write a function to check whether the given month number contains 31 days or not.
	'''
	pass

def check(candidate):
	assert candidate(5)==True
	assert candidate(2)==False
	assert candidate(6)==False

def test_check():
	check(check_monthnumb_number)
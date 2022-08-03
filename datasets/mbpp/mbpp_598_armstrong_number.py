def armstrong_number(number):
	'''
	Write a function to check whether the given number is armstrong or not.
	'''
	pass

def check(candidate):
	assert candidate(153)==True
	assert candidate(259)==False
	assert candidate(4458)==False

def test_check():
	check(armstrong_number)
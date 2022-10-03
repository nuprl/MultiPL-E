def catalan_number(num):
	'''
	Write a function which returns nth catalan number.
	'''
	pass

def check(candidate):
	assert candidate(10)==16796
	assert candidate(9)==4862
	assert candidate(7)==429

def test_check():
	check(catalan_number)
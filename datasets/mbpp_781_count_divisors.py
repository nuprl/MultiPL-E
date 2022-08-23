def count_divisors(n) :
	'''
	Write a python function to check whether the count of divisors is even. https://www.w3resource.com/python-exercises/basic/python-basic-1-exercise-24.php
	'''
	pass

def check(candidate):
	assert candidate(10)
	assert not candidate(100)
	assert candidate(125)

def test_check():
	check(count_divisors)
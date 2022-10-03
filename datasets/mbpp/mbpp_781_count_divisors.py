def count_divisors(n) :
	'''
	Write a python function to check whether the count of divisors is even. https://www.w3resource.com/python-exercises/basic/python-basic-1-exercise-24.php
	'''
	pass

def check(candidate):
	assert candidate(10) == True
	assert candidate(100) == False
	assert candidate(125) == True

def test_check():
	check(count_divisors)
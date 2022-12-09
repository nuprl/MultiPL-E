def swap_numbers(a,b):
	'''
	Write a function that takes in two numbers and returns a list with the second number and then the first number.
	'''
	pass

def check(candidate):
	assert candidate(10,20)==[20,10]
	assert candidate(15,17)==[17,15]
	assert candidate(100,200)==[200,100]

def test_check():
	check(swap_numbers)
def empty_list(length):
	'''
	Write a function to create a list of N empty dictionaries.
	'''
	pass

def check(candidate):
	assert candidate(5)==[{},{},{},{},{}]
	assert candidate(6)==[{},{},{},{},{},{}]
	assert candidate(7)==[{},{},{},{},{},{},{}]

def test_check():
	check(empty_list)
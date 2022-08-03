def get_total_number_of_sequences(m,n):
	'''
	Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m.
	'''
	pass

def check(candidate):
	assert candidate(10, 4) == 4
	assert candidate(5, 2) == 6
	assert candidate(16, 3) == 84

def test_check():
	check(get_total_number_of_sequences)
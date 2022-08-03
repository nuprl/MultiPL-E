def extract_rear(test_tuple):
	'''
	Write a function to extract only the rear index element of each string in the given tuple.
	'''
	pass

def check(candidate):
	assert candidate(('Mers', 'for', 'Vers') ) == ['s', 'r', 's']
	assert candidate(('Avenge', 'for', 'People') ) == ['e', 'r', 'e']
	assert candidate(('Gotta', 'get', 'go') ) == ['a', 't', 'o']

def test_check():
	check(extract_rear)
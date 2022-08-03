def rear_extract(test_list):
	'''
	Write a function that takes in a list of tuples and returns a list containing the rear element of each tuple.
	'''
	pass

def check(candidate):
	assert candidate([(1, 'Rash', 21), (2, 'Varsha', 20), (3, 'Kil', 19)]) == [21, 20, 19]
	assert candidate([(1, 'Sai', 36), (2, 'Ayesha', 25), (3, 'Salman', 45)]) == [36, 25, 45]
	assert candidate([(1, 'Sudeep', 14), (2, 'Vandana', 36), (3, 'Dawood', 56)]) == [14, 36, 56]

def test_check():
	check(rear_extract)
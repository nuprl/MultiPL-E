def drop_empty(dict1):
	'''
	Write a function to drop empty items from a given dictionary.
	'''
	pass

def check(candidate):
	assert candidate({'c1': 'Red', 'c2': 'Green', 'c3':None})=={'c1': 'Red', 'c2': 'Green'}
	assert candidate({'c1': 'Red', 'c2': None, 'c3':None})=={'c1': 'Red'}
	assert candidate({'c1': None, 'c2': 'Green', 'c3':None})=={ 'c2': 'Green'}

def test_check():
	check(drop_empty)
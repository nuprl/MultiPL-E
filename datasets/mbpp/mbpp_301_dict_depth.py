def dict_depth(d):
	'''
	Write a function to find the depth of a dictionary.
	'''
	pass

def check(candidate):
	assert candidate({'a':1, 'b': {'c': {'d': {}}}})==4
	assert candidate({'a':1, 'b': {'c':'python'}})==2
	assert candidate({1: 'Sun', 2: {3: {4:'Mon'}}})==3

def test_check():
	check(dict_depth)
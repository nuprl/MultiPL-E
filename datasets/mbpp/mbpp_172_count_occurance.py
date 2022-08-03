def count_occurance(s):
	'''
	Write a function to count the number of occurence of the string 'std' in a given string.
	'''
	pass

def check(candidate):
	assert candidate("letstdlenstdporstd") == 3
	assert candidate("truststdsolensporsd") == 1
	assert candidate("makestdsostdworthit") == 2
	assert candidate("stds") == 1
	assert candidate("") == 0

def test_check():
	check(count_occurance)
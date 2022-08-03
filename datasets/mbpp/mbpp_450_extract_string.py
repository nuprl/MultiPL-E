def extract_string(str, l):
	'''
	Write a function to extract specified size of strings from a given list of string values.
	'''
	pass

def check(candidate):
	assert candidate(['Python', 'list', 'exercises', 'practice', 'solution'] ,8)==['practice', 'solution']
	assert candidate(['Python', 'list', 'exercises', 'practice', 'solution'] ,6)==['Python']
	assert candidate(['Python', 'list', 'exercises', 'practice', 'solution'] ,9)==['exercises']

def test_check():
	check(extract_string)
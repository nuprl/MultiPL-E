def insert_element(list,element):
	'''
	Write a function that takes in a list and an element and inserts the element before each element in the list, and returns the resulting list.
	'''
	pass

def check(candidate):
	assert candidate(['Red', 'Green', 'Black'] ,'c')==['c', 'Red', 'c', 'Green', 'c', 'Black']
	assert candidate(['python', 'java'] ,'program')==['program', 'python', 'program', 'java']
	assert candidate(['happy', 'sad'] ,'laugh')==['laugh', 'happy', 'laugh', 'sad']

def test_check():
	check(insert_element)
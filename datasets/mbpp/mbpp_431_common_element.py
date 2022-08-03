def common_element(list1, list2):
	'''
	Write a function that takes two lists and returns true if they have at least one common element.
	'''
	pass

def check(candidate):
	assert candidate([1,2,3,4,5], [5,6,7,8,9])==True
	assert candidate([1,2,3,4,5], [6,7,8,9])==None
	assert candidate(['a','b','c'], ['d','b','e'])==True

def test_check():
	check(common_element)
def Find_Max(lst):
	'''
	Write a python function to find the element of a list having maximum length.
	'''
	pass

def check(candidate):
	assert candidate([['A'],['A','B'],['A','B','C']]) == ['A','B','C']
	assert candidate([[1],[1,2],[1,2,3]]) == [1,2,3]
	assert candidate([[1,1],[1,2,3],[1,5,6,1]]) == [1,5,6,1]

def test_check():
	check(Find_Max)
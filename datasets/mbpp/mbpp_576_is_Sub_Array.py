def is_Sub_Array(A,B):
	'''
	Write a python function to check whether a list is sublist of another or not.
	'''
	pass

def check(candidate):
	assert candidate([1,4,3,5],[1,2]) == False
	assert candidate([1,2,1],[1,2,1]) == True
	assert candidate([1,0,2,2],[2,2,0]) ==False

def test_check():
	check(is_Sub_Array)
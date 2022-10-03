def count_samepair(list1,list2,list3):
	'''
	Write a function to count number items that are identical in the same position of three given lists.
	'''
	pass

def check(candidate):
	assert candidate([1,2,3,4,5,6,7,8],[2,2,3,1,2,6,7,9],[2,1,3,1,2,6,7,9])==3
	assert candidate([1,2,3,4,5,6,7,8],[2,2,3,1,2,6,7,8],[2,1,3,1,2,6,7,8])==4
	assert candidate([1,2,3,4,2,6,7,8],[2,2,3,1,2,6,7,8],[2,1,3,1,2,6,7,8])==5

def test_check():
	check(count_samepair)
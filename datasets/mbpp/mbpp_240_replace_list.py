def replace_list(list1,list2):
	'''
	Write a function that takes in two lists and replaces the last element of the first list with the elements of the second list.
	'''
	pass

def check(candidate):
	assert candidate([1, 3, 5, 7, 9, 10],[2, 4, 6, 8])==[1, 3, 5, 7, 9, 2, 4, 6, 8]
	assert candidate([1,2,3,4,5],[5,6,7,8])==[1,2,3,4,5,6,7,8]
	assert candidate(["red","blue","green"],["yellow"])==["red","blue","yellow"]

def test_check():
	check(replace_list)
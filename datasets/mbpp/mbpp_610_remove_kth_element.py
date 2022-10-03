def remove_kth_element(list1, L):
	'''
	Write a python function which takes a list and returns a list with the same elements, but the k'th element removed.
	'''
	pass

def check(candidate):
	assert candidate([1,1,2,3,4,4,5,1],3)==[1, 1, 3, 4, 4, 5, 1]
	assert candidate([0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4],4)==[0, 0, 1, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4]
	assert candidate([10, 10, 15, 19, 18, 18, 17, 26, 26, 17, 18, 10],5)==[10,10,15,19, 18, 17, 26, 26, 17, 18, 10]

def test_check():
	check(remove_kth_element)
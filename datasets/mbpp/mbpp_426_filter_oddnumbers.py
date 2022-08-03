def filter_oddnumbers(nums):
	'''
	Write a function to filter odd numbers.
	'''
	pass

def check(candidate):
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])==[1,3,5,7,9]
	assert candidate([10,20,45,67,84,93])==[45,67,93]
	assert candidate([5,7,9,8,6,4,3])==[5,7,9,3]

def test_check():
	check(filter_oddnumbers)
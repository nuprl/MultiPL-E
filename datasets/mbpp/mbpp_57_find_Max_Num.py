def find_Max_Num(arr) :
	'''
	Write a python function to find the largest number that can be formed with the given list of digits.
	'''
	pass

def check(candidate):
	assert candidate([1,2,3]) == 321
	assert candidate([4,5,6,1]) == 6541
	assert candidate([1,2,3,9]) == 9321

def test_check():
	check(find_Max_Num)
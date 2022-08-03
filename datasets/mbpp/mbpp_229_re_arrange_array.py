def re_arrange_array(arr, n):
	'''
	Write a function that takes in an array and an integer n, and re-arranges the first n elements of the given array so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved.
	'''
	pass

def check(candidate):
	assert candidate([-1, 2, -3, 4, 5, 6, -7, 8, 9], 9) == [-1, -3, -7, 4, 5, 6, 2, 8, 9]
	assert candidate([12, -14, -26, 13, 15], 5) == [-14, -26, 12, 13, 15]
	assert candidate([10, 24, 36, -42, -39, -78, 85], 7) == [-42, -39, -78, 10, 24, 36, 85]

def test_check():
	check(re_arrange_array)
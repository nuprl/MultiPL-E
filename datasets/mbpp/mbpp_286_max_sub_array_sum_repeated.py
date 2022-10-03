def max_sub_array_sum_repeated(a, n, k):
	'''
	Write a function to find the largest sum of a contiguous array in the modified array which is formed by repeating the given array k times.
	'''
	pass

def check(candidate):
	assert candidate([10, 20, -30, -1], 4, 3) == 30
	assert candidate([-1, 10, 20], 3, 2) == 59
	assert candidate([-1, -2, -3], 3, 3) == -1

def test_check():
	check(max_sub_array_sum_repeated)
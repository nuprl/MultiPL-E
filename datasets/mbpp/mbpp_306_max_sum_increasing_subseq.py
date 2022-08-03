def max_sum_increasing_subseq(a, n, index, k):
	'''
	Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
	'''
	pass

def check(candidate):
	assert candidate([1, 101, 2, 3, 100, 4, 5 ], 7, 4, 6) == 11
	assert candidate([1, 101, 2, 3, 100, 4, 5 ], 7, 2, 5) == 7
	assert candidate([11, 15, 19, 21, 26, 28, 31], 7, 2, 4) == 71

def test_check():
	check(max_sum_increasing_subseq)
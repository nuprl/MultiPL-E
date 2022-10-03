def k_smallest_pairs(nums1, nums2, k):
	'''
	Write a function to find k number of smallest pairs which consist of one element from the first array and one element from the second array.
	'''
	pass

def check(candidate):
	assert candidate([1,3,7],[2,4,6],2)==[[1, 2], [1, 4]]
	assert candidate([1,3,7],[2,4,6],1)==[[1, 2]]
	assert candidate([1,3,7],[2,4,6],7)==[[1, 2], [1, 4], [3, 2], [1, 6], [3, 4], [3, 6], [7, 2]]

def test_check():
	check(k_smallest_pairs)
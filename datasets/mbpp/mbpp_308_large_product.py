def large_product(nums1, nums2, N):
	'''
	Write a function to find the specified number of largest products from two given lists, selecting one factor from each list.
	'''
	pass

def check(candidate):
	assert candidate([1, 2, 3, 4, 5, 6],[3, 6, 8, 9, 10, 6],3)==[60, 54, 50]
	assert candidate([1, 2, 3, 4, 5, 6],[3, 6, 8, 9, 10, 6],4)==[60, 54, 50, 48]
	assert candidate([1, 2, 3, 4, 5, 6],[3, 6, 8, 9, 10, 6],5)==[60, 54, 50, 48, 45]

def test_check():
	check(large_product)
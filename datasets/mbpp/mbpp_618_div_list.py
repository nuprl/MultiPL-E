def div_list(nums1,nums2):
	'''
	Write a function to divide two lists element wise.
	'''
	pass

def check(candidate):
	assert candidate([4,5,6],[1, 2, 3])==[4.0,2.5,2.0]
	assert candidate([3,2],[1,4])==[3.0, 0.5]
	assert candidate([90,120],[50,70])==[1.8, 1.7142857142857142]

def test_check():
	check(div_list)
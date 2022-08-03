def min_k(test_list, K):
	'''
	Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/python-find-minimum-k-records-from-tuple-list/ - in this case a verbatim copy of test cases
	'''
	pass

def check(candidate):
	assert candidate([('Manjeet', 10), ('Akshat', 4), ('Akash', 2), ('Nikhil', 8)], 2) == [('Akash', 2), ('Akshat', 4)]
	assert candidate([('Sanjeev', 11), ('Angat', 5), ('Akash', 3), ('Nepin', 9)], 3) == [('Akash', 3), ('Angat', 5), ('Nepin', 9)]
	assert candidate([('tanmay', 14), ('Amer', 11), ('Ayesha', 9), ('SKD', 16)], 1) == [('Ayesha', 9)]

def test_check():
	check(min_k)
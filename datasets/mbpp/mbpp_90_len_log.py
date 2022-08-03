def len_log(list1):
	'''
	Write a python function to find the length of the longest word.
	'''
	pass

def check(candidate):
	assert candidate(["python","PHP","bigdata"]) == 7
	assert candidate(["a","ab","abc"]) == 3
	assert candidate(["small","big","tall"]) == 5

def test_check():
	check(len_log)
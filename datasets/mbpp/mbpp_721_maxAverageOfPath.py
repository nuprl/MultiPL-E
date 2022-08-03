def maxAverageOfPath(cost):
	'''
	Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path.
	'''
	pass

def check(candidate):
	assert candidate([[1, 2, 3], [6, 5, 4], [7, 3, 9]]) == 5.2
	assert candidate([[2, 3, 4], [7, 6, 5], [8, 4, 10]]) == 6.2
	assert candidate([[3, 4, 5], [8, 7, 6], [9, 5, 11]]) == 7.2
	assert candidate([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) == 5.8

def test_check():
	check(maxAverageOfPath)
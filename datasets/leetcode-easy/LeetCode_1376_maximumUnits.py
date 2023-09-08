from typing import List


def maximumUnits(boxTypes: List[List[int]], truckSize: int) -> int:
    """
    You are assigned to put some amount of boxes onto one truck. You are given a 2D array boxTypes, where boxTypes[i] = [numberOfBoxesi, numberOfUnitsPerBoxi]:

    numberOfBoxesi is the number of boxes of type i.
    numberOfUnitsPerBoxi is the number of units in each box of the type i.

    You are also given an integer truckSize, which is the maximum number of boxes that can be put on the truck. You can choose any boxes to put on the truck as long as the number of boxes does not exceed truckSize.
    Return the maximum total number of units that can be put on the truck.
 
    Example 1:

    Input: boxTypes = [[1,3],[2,2],[3,1]], truckSize = 4
    Output: 8
    Explanation: There are:
    - 1 box of the first type that contains 3 units.
    - 2 boxes of the second type that contain 2 units each.
    - 3 boxes of the third type that contain 1 unit each.
    You can take all the boxes of the first and second types, and one box of the third type.
    The total number of units will be = (1 * 3) + (2 * 2) + (1 * 1) = 8.

    Example 2:

    Input: boxTypes = [[5,10],[2,5],[4,7],[3,9]], truckSize = 10
    Output: 91

 
    Constraints:

    1 <= boxTypes.length <= 1000
    1 <= numberOfBoxesi, numberOfUnitsPerBoxi <= 1000
    1 <= truckSize <= 106

    """
    ### Canonical solution below ###
    boxTypes.sort(key=lambda x: x[1], reverse=True)

    totalUnits = 0
    for box in boxTypes:
        boxCount = min(truckSize, box[0])
        totalUnits += boxCount * box[1]
        truckSize -= boxCount
        if truckSize == 0:
            break

    return totalUnits




### Unit tests below ###
def check(candidate):
	assert candidate([[1,3],[2,2],[3,1]], 4) == 8
	assert candidate([[1,10],[1,20],[1,30],[1,40]], 1) == 40
	assert candidate([[1,3],[2,2],[3,1]], 1) == 3
	assert candidate([[1,10],[2,5],[3,3]], 2) == 15
	assert candidate([[1,1],[1,2],[1,3],[1,4]], 3) == 9
	assert candidate(
    [[5, 10], [2, 5], [4, 7], [3, 9]], 10) == 91
	assert candidate([[2,20],[2,15],[2,10],[2,5]], 5) == 80
	assert candidate([[1,3],[2,2],[3,1]], 0) == 0
	assert candidate([[1,1],[1,2],[1,3],[1,4]], 1) == 4
	assert candidate([[5,10],[2,5],[4,7],[3,9]], 10) == 91
	assert candidate([[3,3],[3,5],[3,10],[3,6]], 1) == 10
	assert candidate([[1,3],[2,2],[3,1]], 2) == 5
	assert candidate(
    [[5,10],[2,5],[4,7],[3,9]], 10) == 91
	assert candidate([[1,10],[1,20],[1,30],[1,40]], 4) == 100
def test_check():
	check(maximumUnits)
# Metadata Difficulty: Easy
# Metadata Topics: array,greedy,sorting
# Metadata Coverage: 100

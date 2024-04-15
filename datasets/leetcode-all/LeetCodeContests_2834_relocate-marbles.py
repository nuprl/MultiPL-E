from typing import List

def relocateMarbles(nums: List[int], moveFrom: List[int], moveTo: List[int]) -> List[int]:
    """
    You are given a 0-indexed integer array nums representing the initial positions of some marbles. You are also given two 0-indexed integer arrays moveFrom and moveTo of equal length.
    
    Throughout moveFrom.length steps, you will change the positions of the marbles. On the ith step, you will move all marbles at position moveFrom[i] to position moveTo[i].
    
    After completing all the steps, return the sorted list of occupied positions.
    
    Notes:
    
     * We call a position occupied if there is at least one marble in that position.
     * There may be multiple marbles in a single position.
    
    Example 1:
    
    Input: nums = [1,6,7,8], moveFrom = [1,7,2], moveTo = [2,9,5]
    Output: [5,6,8,9]
    Explanation: Initially, the marbles are at positions 1,6,7,8.
    At the i = 0th step, we move the marbles at position 1 to position 2. Then, positions 2,6,7,8 are occupied.
    At the i = 1st step, we move the marbles at position 7 to position 9. Then, positions 2,6,8,9 are occupied.
    At the i = 2nd step, we move the marbles at position 2 to position 5. Then, positions 5,6,8,9 are occupied.
    At the end, the final positions containing at least one marbles are [5,6,8,9].
    
    Example 2:
    
    Input: nums = [1,1,3,3], moveFrom = [1,3], moveTo = [2,2]
    Output: [2]
    Explanation: Initially, the marbles are at positions [1,1,3,3].
    At the i = 0th step, we move all the marbles at position 1 to position 2. Then, the marbles are at positions [2,2,3,3].
    At the i = 1st step, we move all the marbles at position 3 to position 2. Then, the marbles are at positions [2,2,2,2].
    Since 2 is the only occupied position, we return [2].
    
    
    Constraints:
    
     * 1 <= nums.length <= 105
     * 1 <= moveFrom.length <= 105
     * moveFrom.length == moveTo.length
     * 1 <= nums[i], moveFrom[i], moveTo[i] <= 109
     * The test cases are generated such that there is at least a marble in moveFrom[i] at the moment we want to apply the ith move.
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 6, 7, 8], [1, 7, 2], [2, 9, 5]) == [5,6,8,9]
    assert candidate([1, 1, 3, 3], [1, 3], [2, 2]) == [2]
    assert candidate([5, 7, 8, 15], [5, 7, 8, 9], [9, 15, 2, 7]) == [2,7,15]
    assert candidate([4, 6, 6, 9, 18], [18, 6, 17, 4, 9, 19, 2], [23, 17, 20, 19, 11, 2, 20]) == [11,20,23]
    assert candidate([3, 4], [4, 3, 1, 2, 2, 3, 2, 4, 1], [3, 1, 2, 2, 3, 2, 4, 1, 1]) == [1]
    assert candidate([5, 13, 22, 23, 23, 33], [13, 5, 12], [1, 12, 13]) == [1,13,22,23,33]
    assert candidate([21, 24, 35, 72, 77, 82, 82, 96, 97, 97], [82, 76, 3, 97], [76, 3, 52, 27]) == [21,24,27,35,52,72,77,96]
    assert candidate([4, 6, 17, 41, 46, 46, 52, 57], [4], [62]) == [6,17,41,46,52,57,62]
    assert candidate([1, 4, 10, 24, 46, 55, 61, 63, 71], [10, 52, 1, 80, 63, 55, 4, 46, 71, 24], [52, 42, 80, 55, 50, 62, 60, 17, 46, 38]) == [17,38,42,46,50,60,61,62]
    assert candidate([8, 9, 16, 17, 23], [8, 5, 16, 2, 9], [5, 20, 2, 18, 22]) == [17,18,20,22,23]
    assert candidate([12, 37, 46, 47, 49, 55, 59, 65, 71, 88], [88, 59, 71], [81, 39, 73]) == [12,37,39,46,47,49,55,65,73,81]
    assert candidate([2, 45, 45, 48, 51, 57, 67, 73, 78, 78], [78, 67, 45, 34, 51, 62, 48, 95, 2, 67], [34, 65, 62, 95, 62, 12, 85, 67, 79, 71]) == [12,57,65,71,73,79,85]
    assert candidate([1, 2], [1, 2, 3], [2, 3, 2]) == [2]
    assert candidate([7, 19, 28, 34, 36, 36, 47], [36, 33, 34, 28, 41, 19, 14, 47, 28, 40], [33, 41, 27, 47, 14, 40, 46, 28, 42, 16]) == [7,16,27,42,46]
    assert candidate([1, 1, 1], [1], [7]) == [7]
    assert candidate([1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]) == [1]
    assert candidate([5, 9, 17, 20, 29, 29], [20, 5, 1, 29, 22, 21, 9, 36, 33, 1], [1, 22, 21, 36, 36, 15, 33, 1, 3, 15]) == [3,15,17]
    assert candidate([1], [1, 1, 1, 1], [1, 1, 1, 1]) == [1]
    assert candidate([27, 41, 50, 52, 57, 60, 65, 67, 70], [52, 67, 70, 50, 57, 27, 47], [45, 45, 61, 47, 21, 65, 60]) == [21,41,45,60,61,65]
    assert candidate([2, 3, 7], [2, 7, 8, 8, 3, 5, 1, 4], [8, 5, 8, 1, 4, 4, 4, 5]) == [5]
    assert candidate([4, 6, 8, 10], [8, 6], [4, 3]) == [3,4,10]
    assert candidate([2, 4, 29, 34, 41, 44, 48], [29, 3, 44, 48, 2, 43, 4], [3, 24, 43, 42, 24, 8, 6]) == [6,8,24,34,41,42]
    assert candidate([12, 16, 22, 28, 36, 42, 60, 63], [42, 28, 12, 22], [22, 63, 14, 45]) == [14,16,36,45,60,63]
    assert candidate([12, 18, 21, 21, 31, 38, 39, 41, 84, 90], [41, 31, 12, 84, 9, 39, 21, 62], [24, 17, 58, 9, 62, 36, 23, 90]) == [17,18,23,24,36,38,58,90]
    assert candidate([12, 23, 30, 35, 46, 53, 64, 74, 81], [53, 74, 54, 48, 52, 64, 35, 30, 46, 29], [54, 48, 52, 47, 53, 29, 52, 10, 44, 28]) == [10,12,23,28,44,47,52,53,81]
    assert candidate([2, 10, 13, 14, 16, 30], [2, 6, 14, 16, 25, 13, 30], [6, 30, 25, 1, 32, 17, 11]) == [1,10,11,17,32]
    assert candidate([1, 6, 10, 11, 18, 22, 30], [10, 18, 1, 30, 6], [1, 37, 28, 38, 15]) == [11,15,22,28,37,38]
    assert candidate([3, 9, 10, 13], [9, 3, 13, 10, 5, 11, 8], [11, 5, 11, 15, 8, 5, 14]) == [5,14,15]
    assert candidate([15, 31, 32, 52, 61, 65, 78, 84, 93, 100], [15, 32, 93, 3, 78, 65, 61, 84], [61, 3, 8, 55, 23, 87, 95, 44]) == [8,23,31,44,52,55,87,95,100]
    assert candidate([1, 2], [1, 2, 1, 1, 1, 3, 4, 4], [1, 1, 1, 1, 3, 4, 4, 2]) == [2]
    assert candidate([2, 2, 2], [2, 8, 5, 9], [8, 5, 9, 2]) == [2]
    assert candidate([3, 10, 11, 27, 58, 59, 61, 66, 68], [59, 61, 3, 15], [15, 68, 77, 52]) == [10,11,27,52,58,66,68,77]
    assert candidate([2, 9, 9], [9, 2, 8, 9, 4, 6, 7, 1, 5, 5], [4, 8, 9, 4, 6, 7, 1, 5, 5, 5]) == [5]
    assert candidate([1, 18, 24, 25, 29, 31], [18, 25, 29, 18, 23], [3, 23, 18, 18, 8]) == [1,3,8,18,24,31]
    assert candidate([2, 18, 38, 38, 48, 50, 51, 61, 71], [61, 71, 2, 18, 47, 22, 24, 51], [58, 38, 22, 47, 68, 24, 47, 60]) == [38,47,48,50,58,60,68]
    assert candidate([11, 11, 35, 35, 38, 43, 45], [35, 11, 2, 27, 38, 45, 47, 17], [2, 47, 27, 17, 47, 24, 35, 21]) == [21,24,35,43]
    assert candidate([4, 11, 15, 28, 36, 42, 45, 57], [57, 32, 36, 11, 52, 42, 55, 4], [32, 55, 39, 52, 11, 54, 31, 56]) == [11,15,28,31,39,45,54,56]
    assert candidate([2, 4], [4, 2], [4, 1]) == [1,4]
    assert candidate([9, 14, 24, 31, 32, 40, 47, 54, 75, 76], [31, 75, 76, 3, 47, 32, 24, 9, 14, 18], [76, 76, 3, 8, 18, 66, 32, 2, 62, 82]) == [2,8,32,40,54,62,66,82]
    assert candidate([1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]) == [1]
    assert candidate([2, 12, 13, 14, 18], [13, 2, 14], [17, 20, 19]) == [12,17,18,19,20]
    assert candidate([12, 21, 24, 28, 41, 60, 62, 70, 76], [21, 76, 41, 3], [23, 33, 3, 53]) == [12,23,24,28,33,53,60,62,70]
    assert candidate([7, 29, 40, 43, 48, 56, 60, 72, 81], [56, 60, 6, 62], [62, 6, 34, 17]) == [7,17,29,34,40,43,48,72,81]
    assert candidate([2, 4, 5, 8], [2, 4, 3, 7, 5, 8, 14], [3, 7, 9, 14, 9, 6, 16]) == [6,9,16]
    assert candidate([9, 15, 18, 24, 39, 48, 59, 64], [59, 64, 63, 60, 9], [60, 63, 61, 45, 57]) == [15,18,24,39,45,48,57,61]
    assert candidate([2, 8, 8, 9, 11, 21], [8, 11, 30, 21, 14, 27, 9, 22, 2, 7], [30, 27, 22, 14, 7, 3, 1, 21, 4, 16]) == [1,3,4,16,21]
    assert candidate([5, 11, 30, 43, 47, 63, 65, 82, 86, 93], [43, 63, 11, 93, 82, 47, 54, 5, 30], [36, 53, 54, 49, 18, 3, 29, 66, 22]) == [3,18,22,29,36,49,53,65,66,86]
    assert candidate([9, 14, 14, 16, 26, 51, 53, 64, 76], [64, 45, 9, 14, 26, 53, 51, 67, 80], [45, 67, 23, 37, 80, 16, 27, 51, 44]) == [16,23,27,37,44,51,76]
    assert candidate([16, 21, 21, 25, 39, 41, 44], [41, 21, 45, 29, 35, 39, 29, 25, 28], [21, 45, 29, 35, 33, 29, 20, 28, 45]) == [16,20,33,44,45]
    assert candidate([1, 1, 3], [3, 1, 9, 5, 5], [9, 9, 5, 5, 9]) == [9]
    assert candidate([12, 14, 16, 16, 21, 32], [32, 5, 14, 21, 15, 22, 16], [5, 22, 15, 16, 15, 27, 22]) == [12,15,22,27]
    assert candidate([1, 5, 9], [1, 5, 9, 3, 8, 5, 9, 1, 5], [8, 3, 9, 1, 5, 8, 1, 5, 2]) == [2,8]
    assert candidate([1, 2, 14, 30, 43, 44, 76, 76, 77], [76, 77, 43, 1], [56, 44, 11, 45]) == [2,11,14,30,44,45,56]
    assert candidate([4, 25, 27, 33, 33, 35], [25, 27, 27, 34, 7, 36], [34, 27, 36, 7, 25, 1]) == [1,4,25,33,35]
    assert candidate([3, 7, 18, 25, 37, 48, 48, 62], [48, 18, 62, 48, 2, 18, 56, 53, 37], [15, 48, 56, 2, 18, 55, 53, 40, 22]) == [3,7,15,22,25,40,55]
    assert candidate([19, 35, 46, 55, 59, 59, 68, 72, 93, 100], [46, 100, 35, 19, 68, 87, 21, 93, 27], [76, 94, 87, 66, 57, 21, 27, 89, 40]) == [40,55,57,59,66,72,76,89,94]
    assert candidate([1, 3], [3, 1, 3, 4, 4], [1, 3, 4, 4, 4]) == [4]
    assert candidate([22, 30, 36, 40, 44, 48, 50, 59], [30, 44, 64, 59, 4], [64, 4, 50, 25, 36]) == [22,25,36,40,48,50]
    assert candidate([1], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]) == [1]
    assert candidate([8, 18, 23, 37, 37, 39, 48], [8, 39, 23, 7, 37, 36], [39, 7, 36, 25, 10, 28]) == [10,18,25,28,48]
    assert candidate([1, 4], [1, 2, 4], [2, 3, 1]) == [1,3]
    assert candidate([3, 7, 9, 13], [3, 16, 9, 7, 6, 15, 16, 7, 13, 7], [16, 6, 2, 15, 8, 16, 7, 1, 7, 9]) == [1,2,8,9]
    assert candidate([11, 12, 17, 18, 20], [11, 17], [18, 13]) == [12,13,18,20]
    assert candidate([5, 11, 17, 21, 25], [17], [14]) == [5,11,14,21,25]
    assert candidate([7, 9, 12, 20, 23], [7, 8], [8, 12]) == [9,12,20,23]
    assert candidate([1], [1, 1], [1, 1]) == [1]
    assert candidate([10, 13, 17, 49, 56, 57, 59, 62, 68], [49, 62, 59, 45], [58, 64, 45, 77]) == [10,13,17,56,57,58,64,68,77]
    assert candidate([1, 8, 15, 23, 24, 29, 47], [8, 23, 24, 47, 10, 1], [38, 10, 10, 48, 22, 24]) == [15,22,24,29,38,48]
    assert candidate([3, 3], [3, 1, 4, 2, 2, 2, 2, 2, 1], [1, 4, 2, 2, 2, 2, 2, 1, 3]) == [3]
    assert candidate([4, 8, 8], [8, 7, 7], [7, 7, 8]) == [4,8]
    assert candidate([1, 2], [1, 2, 1, 3, 4, 2, 3, 4, 1, 4], [3, 1, 3, 4, 2, 3, 4, 1, 4, 4]) == [4]
    assert candidate([12, 13, 16, 31, 48, 52, 56, 72, 79], [13, 79, 12, 72, 14, 48, 56, 52], [56, 14, 8, 63, 70, 54, 19, 73]) == [8,16,19,31,54,63,70,73]
    assert candidate([3, 7, 7, 14], [3, 16, 7, 15, 12, 5, 14, 16, 13], [16, 15, 5, 12, 16, 14, 9, 13, 5]) == [5,9]
    assert candidate([9, 13, 14, 15], [15, 14, 13, 5, 8], [8, 3, 5, 3, 12]) == [3,9,12]
    assert candidate([11, 16, 28, 33, 37, 45, 45, 58, 79], [16, 57, 81, 79, 11], [57, 81, 29, 45, 31]) == [28,29,31,33,37,45,58]
    assert candidate([1, 6, 7, 7], [6, 8, 8, 12, 15, 8, 9, 15], [8, 8, 12, 15, 8, 9, 15, 8]) == [1,7,8]
    assert candidate([7, 20, 23, 25, 33, 39, 51, 74, 76], [76, 20, 74, 7, 15], [74, 64, 15, 40, 71]) == [23,25,33,39,40,51,64,71]
    assert candidate([4, 6, 6], [6, 4, 7, 6, 4, 7, 8, 1, 2, 4], [6, 7, 4, 7, 8, 2, 1, 9, 4, 2]) == [2,9]
    assert candidate([8, 14, 17, 19, 21], [19, 8, 14, 21, 17, 1, 14, 18], [14, 18, 14, 1, 18, 23, 10, 12]) == [10,12,23]
    assert candidate([13, 18, 39, 44, 45, 49, 72, 81, 95, 100], [49, 81, 18, 39, 44, 22, 100, 66, 45, 5], [54, 22, 66, 32, 13, 4, 76, 5, 92, 33]) == [4,13,32,33,54,72,76,92,95]
    assert candidate([1, 3], [3, 1, 3, 4, 3, 3, 3, 3, 2], [1, 3, 4, 3, 3, 3, 3, 2, 3]) == [3]
    assert candidate([2, 4, 5, 13], [13, 5, 2], [1, 9, 10]) == [1,4,9,10]
    assert candidate([1], [1], [1]) == [1]
    assert candidate([3, 4, 13, 14, 19], [13, 3, 19, 3, 3, 14, 13, 4, 15, 11], [15, 3, 8, 3, 13, 1, 10, 22, 11, 2]) == [1,2,8,10,22]
    assert candidate([3, 6, 9, 11], [9, 3, 8], [7, 8, 9]) == [6,7,9,11]
    assert candidate([9, 15, 16, 18, 20, 26], [20, 18, 13], [31, 13, 32]) == [9,15,16,26,31,32]
    assert candidate([6, 11, 21, 25, 25], [11, 21, 2, 25, 17, 1], [17, 2, 19, 8, 1, 9]) == [6,8,9,19]
    assert candidate([2, 6, 8], [2, 6, 8, 2, 9, 2, 7], [8, 2, 2, 9, 2, 7, 8]) == [8]
    assert candidate([1, 7, 7], [1, 7, 1, 6, 2, 9, 5, 6], [2, 1, 6, 9, 5, 6, 5, 6]) == [5,6]
    assert candidate([4, 6, 7, 12, 12, 25, 37], [37, 41, 37, 6, 4, 7, 25], [41, 37, 37, 26, 7, 45, 45]) == [12,26,37,45]
    assert candidate([3, 4], [4, 3], [2, 1]) == [1,2]
    assert candidate([1, 2], [1, 2, 3, 3, 2, 1, 2], [2, 3, 3, 2, 1, 2, 2]) == [2]
    assert candidate([20, 37, 44, 53, 55, 59, 60, 62], [20, 44, 53, 60, 11, 55, 37, 59], [53, 28, 62, 11, 16, 63, 9, 6]) == [6,9,16,28,62,63]
    assert candidate([2, 4], [4, 2, 2, 1, 4, 2, 2, 3], [2, 2, 1, 4, 2, 2, 3, 4]) == [4]
    assert candidate([2, 6, 7], [6, 7, 6, 3, 6, 5, 2], [6, 6, 3, 6, 5, 4, 8]) == [4,8]
    assert candidate([3, 7, 13, 13], [13, 7, 4, 6], [9, 4, 6, 15]) == [3,9,15]
    assert candidate([2, 3], [2, 3], [1, 1]) == [1]
    assert candidate([12, 13, 25, 27, 34, 34, 38], [12, 13, 11, 33, 2, 25, 34, 27, 38], [11, 2, 33, 26, 25, 30, 24, 38, 47]) == [24,26,30,47]
    assert candidate([2, 13, 20, 29, 34, 48, 48], [2, 13], [5, 42]) == [5,20,29,34,42,48]
    assert candidate([19, 30, 31, 41, 47, 54, 57, 62], [41, 31, 62, 30, 54], [38, 49, 10, 60, 31]) == [10,19,31,38,47,49,57,60]


def test_check():
    check(relocateMarbles)


### Metadata below ###
# question_id = 2834
# question_title = Relocate Marbles
# question_title_slug = relocate-marbles
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 170
# question_dislikes = 13
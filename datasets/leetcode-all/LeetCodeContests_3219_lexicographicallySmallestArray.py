from typing import List

def lexicographicallySmallestArray(nums: List[int], limit: int) -> List[int]:
    """
    You are given a 0-indexed array of positive integers nums and a positive integer limit.
    In one operation, you can choose any two indices i and j and swap nums[i] and nums[j] if |nums[i] - nums[j]| <= limit.
    Return the lexicographically smallest array that can be obtained by performing the operation any number of times.
    An array a is lexicographically smaller than an array b if in the first position where a and b differ, array a has an element that is less than the corresponding element in b. For example, the array [2,10,3] is lexicographically smaller than the array [10,2,3] because they differ at index 0 and 2 < 10.
    
    Example 1:
    
    Input: nums = [1,5,3,9,8], limit = 2
    Output: [1,3,5,8,9]
    Explanation: Apply the operation 2 times:
    - Swap nums[1] with nums[2]. The array becomes [1,3,5,9,8]
    - Swap nums[3] with nums[4]. The array becomes [1,3,5,8,9]
    We cannot obtain a lexicographically smaller array by applying any more operations.
    Note that it may be possible to get the same result by doing different operations.
    
    Example 2:
    
    Input: nums = [1,7,6,18,2,1], limit = 3
    Output: [1,6,7,18,1,2]
    Explanation: Apply the operation 3 times:
    - Swap nums[1] with nums[2]. The array becomes [1,6,7,18,2,1]
    - Swap nums[0] with nums[4]. The array becomes [2,6,7,18,1,1]
    - Swap nums[0] with nums[5]. The array becomes [1,6,7,18,1,2]
    We cannot obtain a lexicographically smaller array by applying any more operations.
    
    Example 3:
    
    Input: nums = [1,7,28,19,10], limit = 3
    Output: [1,7,28,19,10]
    Explanation: [1,7,28,19,10] is the lexicographically smallest array we can obtain because we cannot apply the operation on any two indices.
    
    
    Constraints:
    
    1 <= nums.length <= 105
    1 <= nums[i] <= 109
    1 <= limit <= 109
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 5, 3, 9, 8], 2) == [1,3,5,8,9]
    assert candidate([1, 7, 6, 18, 2, 1], 3) == [1,6,7,18,1,2]
    assert candidate([1, 7, 28, 19, 10], 3) == [1,7,28,19,10]
    assert candidate([1000000000], 1) == [1000000000]
    assert candidate([1, 60, 34, 84, 62, 56, 39, 76, 49, 38], 4) == [1,56,34,84,60,62,38,76,49,39]
    assert candidate([1, 81, 10, 79, 36, 2, 87, 12, 20, 77], 7) == [1,77,10,79,36,2,81,12,20,87]
    assert candidate([2, 71, 5, 87, 11, 15, 70, 70, 14, 38], 14) == [2,70,5,87,11,14,70,71,15,38]
    assert candidate([4, 3, 23, 84, 34, 88, 44, 44, 18, 15], 3) == [3,4,23,84,34,88,44,44,15,18]
    assert candidate([4, 34, 29, 73, 51, 11, 8, 53, 98, 47], 10) == [4,29,34,73,47,8,11,51,98,53]
    assert candidate([4, 52, 38, 59, 71, 27, 31, 83, 88, 10], 14) == [4,27,31,38,52,59,71,83,88,10]
    assert candidate([4, 68, 8, 10, 70, 62, 27, 5, 42, 61], 11) == [4,61,5,8,62,68,27,10,42,70]
    assert candidate([5, 9, 35, 60, 73, 91, 61, 57, 87, 76], 11) == [5,9,35,57,73,76,60,61,87,91]
    assert candidate([5, 15, 68, 47, 49, 67, 9, 6, 35, 14], 4) == [5,14,67,47,49,68,6,9,35,15]
    assert candidate([5, 16, 43, 15, 66, 21, 58, 74, 55, 66], 9) == [5,15,43,16,55,21,58,66,66,74]
    assert candidate([5, 30, 92, 4, 31, 2, 17, 39, 15, 7], 3) == [2,30,92,4,31,5,15,39,17,7]
    assert candidate([5, 38, 68, 80, 64, 79, 50, 5, 8, 95], 7) == [5,38,64,79,68,80,50,5,8,95]
    assert candidate([5, 100, 44, 45, 16, 30, 14, 65, 83, 64], 15) == [5,100,14,16,30,44,45,64,83,65]
    assert candidate([6, 57, 100, 67, 4, 63, 47, 59, 21, 66], 8) == [4,57,100,59,6,63,47,66,21,67]
    assert candidate([6, 70, 90, 1, 33, 81, 60, 80, 68, 44], 7) == [1,68,90,6,33,80,60,81,70,44]
    assert candidate([6, 74, 74, 74, 30, 70, 91, 74, 76, 41], 1) == [6,74,74,74,30,70,91,74,76,41]
    assert candidate([6, 77, 68, 15, 3, 98, 56, 22, 81, 72], 2) == [6,77,68,15,3,98,56,22,81,72]
    assert candidate([7, 17, 79, 29, 29, 83, 21, 12, 5, 1], 10) == [1,5,79,7,12,83,17,21,29,29]
    assert candidate([7, 66, 85, 9, 29, 1, 25, 69, 57, 95], 13) == [1,57,85,7,25,9,29,66,69,95]
    assert candidate([7, 73, 1, 97, 13, 55, 74, 29, 76, 19], 14) == [1,73,7,97,13,55,74,19,76,29]
    assert candidate([8, 4, 47, 23, 73, 79, 63, 62, 35, 51], 11) == [4,8,47,23,51,62,63,73,35,79]
    assert candidate([8, 17, 20, 100, 59, 98, 64, 78, 64, 53], 1) == [8,17,20,100,59,98,64,78,64,53]
    assert candidate([8, 70, 99, 5, 49, 27, 79, 2, 57, 49], 14) == [2,49,99,5,49,27,57,8,70,79]
    assert candidate([9, 67, 94, 37, 5, 90, 43, 13, 27, 21], 11) == [5,67,90,9,13,94,21,27,37,43]
    assert candidate([10, 22, 17, 76, 6, 64, 51, 60, 65, 37], 9) == [6,10,17,76,22,51,60,64,65,37]
    assert candidate([10, 34, 63, 88, 76, 30, 70, 80, 52, 13], 7) == [10,30,63,88,70,34,76,80,52,13]
    assert candidate([10, 69, 4, 28, 15, 30, 23, 53, 41, 93], 9) == [4,69,10,15,23,28,30,53,41,93]
    assert candidate([12, 86, 98, 73, 64, 77, 30, 76, 46, 69], 4) == [12,86,98,69,64,73,30,76,46,77]
    assert candidate([13, 43, 32, 15, 45, 69, 58, 89, 64, 76], 12) == [13,32,43,15,45,58,64,89,69,76]
    assert candidate([13, 70, 11, 74, 73, 21, 4, 45, 95, 38], 9) == [4,70,11,73,74,13,21,38,95,45]
    assert candidate([14, 15, 53, 11, 38, 18, 27, 69, 55, 2], 13) == [2,11,53,14,15,18,27,69,55,38]
    assert candidate([14, 28, 61, 49, 10, 25, 80, 83, 42, 100], 3) == [14,25,61,49,10,28,80,83,42,100]
    assert candidate([14, 71, 7, 77, 99, 90, 20, 81, 100, 65], 7) == [7,65,14,71,99,90,20,77,100,81]
    assert candidate([14, 95, 75, 100, 33, 98, 88, 2, 74, 26], 1) == [14,95,74,100,33,98,88,2,75,26]
    assert candidate([15, 29, 16, 37, 10, 70, 58, 5, 33, 76], 8) == [5,29,10,33,15,70,58,16,37,76]
    assert candidate([15, 33, 1, 74, 47, 6, 60, 95, 78, 72], 7) == [15,33,1,72,47,6,60,95,74,78]
    assert candidate([16, 20, 79, 92, 17, 7, 70, 41, 54, 18], 6) == [16,17,79,92,18,7,70,41,54,20]
    assert candidate([16, 43, 19, 36, 99, 15, 70, 89, 45, 71], 4) == [15,43,16,36,99,19,70,89,45,71]
    assert candidate([17, 99, 88, 73, 13, 1, 3, 5, 55, 4], 15) == [1,73,88,99,3,4,5,13,55,17]
    assert candidate([18, 97, 57, 1, 23, 36, 77, 80, 47, 91], 10) == [18,91,47,1,23,36,77,80,57,97]
    assert candidate([19, 25, 49, 96, 35, 69, 81, 81, 51, 50], 12) == [19,25,49,96,35,69,81,81,50,51]
    assert candidate([19, 37, 12, 11, 70, 99, 88, 36, 64, 9], 3) == [19,36,9,11,70,99,88,37,64,12]
    assert candidate([19, 64, 26, 5, 70, 10, 17, 66, 51, 36], 13) == [5,51,10,17,64,19,26,66,70,36]
    assert candidate([21, 14, 21, 34, 4, 88, 39, 62, 30, 20], 12) == [4,14,20,21,21,88,30,62,34,39]
    assert candidate([22, 94, 100, 54, 97, 14, 100, 48, 41, 35], 6) == [22,94,97,48,100,14,100,54,35,41]
    assert candidate([23, 50, 8, 48, 62, 26, 92, 5, 96, 9], 13) == [23,48,5,50,62,26,92,8,96,9]
    assert candidate([25, 47, 34, 69, 36, 91, 14, 44, 37, 2], 1) == [25,47,34,69,36,91,14,44,37,2]
    assert candidate([25, 58, 36, 16, 42, 57, 17, 96, 10, 2], 13) == [2,57,10,16,17,58,25,96,36,42]
    assert candidate([26, 21, 9, 15, 94, 47, 52, 86, 89, 7], 9) == [7,9,15,21,86,47,52,89,94,26]
    assert candidate([27, 26, 24, 2, 95, 90, 41, 14, 20, 35], 2) == [24,26,27,2,95,90,41,14,20,35]
    assert candidate([27, 56, 68, 41, 39, 80, 60, 36, 24, 5], 13) == [24,56,60,27,36,68,80,39,41,5]
    assert candidate([27, 71, 52, 71, 68, 2, 49, 37, 34, 97], 8) == [27,68,49,71,71,2,52,34,37,97]
    assert candidate([29, 82, 25, 91, 17, 9, 38, 25, 29, 68], 7) == [25,82,25,91,17,9,38,29,29,68]
    assert candidate([30, 48, 76, 86, 21, 1, 55, 49, 90, 9], 2) == [30,48,76,86,21,1,55,49,90,9]
    assert candidate([31, 10, 64, 15, 60, 32, 88, 79, 79, 33], 2) == [31,10,64,15,60,32,88,79,79,33]
    assert candidate([32, 70, 43, 51, 40, 73, 56, 39, 75, 45], 8) == [32,70,39,40,43,73,45,51,75,56]
    assert candidate([32, 95, 51, 87, 29, 43, 21, 55, 45, 84], 2) == [32,95,51,87,29,43,21,55,45,84]
    assert candidate([33, 25, 25, 65, 82, 71, 56, 82, 13, 46], 14) == [13,25,25,33,46,56,65,71,82,82]
    assert candidate([33, 37, 77, 41, 83, 75, 96, 97, 4, 60], 15) == [33,37,60,41,75,77,83,96,4,97]
    assert candidate([35, 81, 18, 79, 47, 53, 20, 2, 98, 22], 2) == [35,79,18,81,47,53,20,2,98,22]
    assert candidate([36, 39, 100, 4, 44, 33, 65, 11, 15, 35], 10) == [33,35,100,4,36,39,65,11,15,44]
    assert candidate([38, 56, 60, 98, 21, 15, 70, 37, 24, 61], 15) == [15,56,60,98,21,24,61,37,38,70]
    assert candidate([39, 36, 18, 39, 99, 51, 68, 92, 5, 38], 4) == [36,38,18,39,99,51,68,92,5,39]
    assert candidate([39, 89, 81, 37, 67, 37, 98, 89, 49, 47], 12) == [37,81,89,37,67,39,89,98,47,49]
    assert candidate([40, 67, 99, 53, 95, 47, 59, 99, 64, 44], 7) == [40,44,95,47,99,53,59,99,64,67]
    assert candidate([40, 97, 72, 48, 55, 91, 83, 82, 91, 63], 11) == [40,48,55,63,72,82,83,91,91,97]
    assert candidate([41, 10, 22, 43, 17, 38, 67, 7, 68, 70], 7) == [38,7,10,41,17,43,67,22,68,70]
    assert candidate([41, 25, 83, 44, 39, 37, 67, 33, 58, 5], 1) == [41,25,83,44,39,37,67,33,58,5]
    assert candidate([41, 87, 34, 74, 77, 62, 18, 28, 5, 8], 1) == [41,87,34,74,77,62,18,28,5,8]
    assert candidate([45, 1, 66, 44, 45, 74, 75, 96, 31, 47], 2) == [44,1,66,45,45,74,75,96,31,47]
    assert candidate([45, 64, 77, 71, 73, 6, 24, 55, 82, 25], 3) == [45,64,77,71,73,6,24,55,82,25]
    assert candidate([46, 72, 1, 33, 1, 51, 78, 96, 44, 20], 1) == [46,72,1,33,1,51,78,96,44,20]
    assert candidate([47, 32, 72, 79, 16, 69, 85, 70, 87, 73], 2) == [47,32,69,79,16,70,85,72,87,73]
    assert candidate([47, 94, 72, 49, 50, 62, 17, 22, 85, 86], 7) == [47,94,72,49,50,62,17,22,85,86]
    assert candidate([48, 39, 45, 58, 26, 57, 38, 63, 82, 80], 2) == [48,38,45,57,26,58,39,63,80,82]
    assert candidate([48, 51, 51, 39, 54, 56, 57, 6, 1, 40], 2) == [48,51,51,39,54,56,57,6,1,40]
    assert candidate([49, 4, 95, 24, 20, 12, 70, 60, 82, 62], 11) == [49,4,95,12,20,24,60,62,82,70]
    assert candidate([49, 7, 92, 79, 43, 88, 31, 89, 36, 97], 8) == [31,7,88,79,36,89,43,92,49,97]
    assert candidate([49, 16, 32, 11, 7, 57, 69, 41, 52, 23], 15) == [7,11,16,23,32,41,49,52,57,69]
    assert candidate([49, 26, 82, 77, 52, 76, 90, 23, 64, 42], 12) == [42,23,49,52,64,76,77,26,82,90]
    assert candidate([49, 62, 63, 32, 57, 22, 74, 87, 42, 19], 13) == [19,22,32,42,49,57,62,63,74,87]
    assert candidate([49, 93, 5, 15, 56, 2, 65, 74, 82, 42], 13) == [42,49,2,5,56,15,65,74,82,93]
    assert candidate([49, 93, 100, 79, 76, 14, 90, 32, 4, 5], 10) == [49,90,93,76,79,4,100,32,5,14]
    assert candidate([49, 96, 75, 44, 74, 78, 82, 40, 43, 68], 4) == [49,96,74,40,75,78,82,43,44,68]
    assert candidate([51, 61, 49, 11, 69, 78, 40, 98, 68, 36], 10) == [36,40,49,11,51,61,68,98,69,78]
    assert candidate([51, 99, 52, 80, 83, 69, 18, 49, 71, 13], 14) == [49,99,51,69,71,80,13,52,83,18]
    assert candidate([52, 28, 93, 16, 33, 37, 37, 21, 47, 64], 12) == [16,21,93,28,33,37,37,47,52,64]
    assert candidate([53, 7, 99, 22, 3, 50, 62, 70, 56, 40], 2) == [53,7,99,22,3,50,62,70,56,40]
    assert candidate([53, 17, 39, 72, 5, 78, 40, 3, 84, 20], 5) == [53,17,39,72,3,78,40,5,84,20]
    assert candidate([53, 71, 55, 38, 26, 89, 20, 98, 55, 21], 4) == [53,71,55,38,26,89,20,98,55,21]
    assert candidate([53, 71, 74, 7, 99, 64, 95, 99, 90, 22], 9) == [53,64,71,7,90,74,95,99,99,22]
    assert candidate([55, 19, 82, 86, 12, 64, 44, 76, 88, 31], 4) == [55,19,82,86,12,64,44,76,88,31]
    assert candidate([56, 13, 55, 1, 18, 36, 45, 25, 20, 52], 14) == [1,13,18,20,25,36,45,52,55,56]
    assert candidate([56, 28, 50, 100, 56, 99, 80, 71, 6, 5], 7) == [50,28,56,99,56,100,80,71,5,6]
    assert candidate([56, 35, 19, 2, 83, 20, 96, 42, 33, 68], 3) == [56,33,19,2,83,20,96,42,35,68]
    assert candidate([56, 69, 94, 21, 65, 46, 64, 91, 75, 25], 5) == [56,64,91,21,65,46,69,94,75,25]


def test_check():
    check(lexicographicallySmallestArray)


### Metadata below ###
# question_id = 3219
# question_title = Make Lexicographically Smallest Array by Swapping Elements
# question_title_slug = make-lexicographically-smallest-array-by-swapping-elements
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 197
# question_dislikes = 10
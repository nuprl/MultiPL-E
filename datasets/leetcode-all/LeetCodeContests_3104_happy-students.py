from typing import List

def countWays(nums: List[int]) -> int:
    """
    You are given a 0-indexed integer array nums of length n where n is the total number of students in the class. The class teacher tries to select a group of students so that all the students remain happy.
    
    The ith student will become happy if one of these two conditions is met:
    
     * The student is selected and the total number of selected students is strictly greater than nums[i].
     * The student is not selected and the total number of selected students is strictly less than nums[i].
    
    Return the number of ways to select a group of students so that everyone remains happy.
    
    Example 1:
    
    Input: nums = [1,1]
    Output: 2
    Explanation:
    The two possible ways are:
    The class teacher selects no student.
    The class teacher selects both students to form the group.
    If the class teacher selects just one student to form a group then the both students will not be happy. Therefore, there are only two possible ways.
    
    Example 2:
    
    Input: nums = [6,0,3,3,6,7,2,7]
    Output: 3
    Explanation:
    The three possible ways are:
    The class teacher selects the student with index = 1 to form the group.
    The class teacher selects the students with index = 1, 2, 3, 6 to form the group.
    The class teacher selects all the students to form the group.
    
    
    Constraints:
    
     * 1 <= nums.length <= 105
     * 0 <= nums[i] < nums.length
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 1]) == 2
    assert candidate([6, 0, 3, 3, 6, 7, 2, 7]) == 3
    assert candidate([1, 1, 0, 1]) == 1
    assert candidate([5, 0, 3, 4, 2, 1, 2, 4]) == 1
    assert candidate([0, 4, 4, 4, 4, 4, 2]) == 2
    assert candidate([0, 1, 5, 6, 8, 7, 4, 7, 2]) == 2
    assert candidate([0]) == 1
    assert candidate([2, 2, 7, 1, 2, 2, 4, 7]) == 3
    assert candidate([0, 2, 2, 2, 3, 3, 3, 3]) == 2
    assert candidate([7, 7, 7, 7, 7, 7, 7, 7, 2]) == 2
    assert candidate([4, 2, 3, 6, 6, 0, 6, 8, 3]) == 3
    assert candidate([0, 0, 1, 7, 2, 0, 6, 5]) == 1
    assert candidate([6, 6, 6, 6, 6, 6, 6, 7, 1, 7]) == 2
    assert candidate([2, 2, 4, 5, 0, 1, 4, 4, 7]) == 1
    assert candidate([4, 4, 4, 4, 4]) == 2
    assert candidate([0, 4, 0, 3, 4]) == 2
    assert candidate([6, 5, 5, 8, 4, 2, 6, 4, 8]) == 3
    assert candidate([0, 9, 4, 6, 8, 8, 1, 7, 4, 7]) == 2
    assert candidate([1, 0, 0]) == 1
    assert candidate([1, 1, 2, 2, 2, 3, 3, 3, 3]) == 2
    assert candidate([4, 5, 0, 4, 2, 0, 2]) == 1
    assert candidate([8, 1, 2, 1, 2, 1, 2, 4, 0]) == 1
    assert candidate([0, 1]) == 1
    assert candidate([8, 4, 1, 8, 8, 7, 4, 5, 3]) == 2
    assert candidate([1, 1, 0, 2, 5, 5, 4]) == 1
    assert candidate([6, 3, 1, 5, 5, 4, 5]) == 2
    assert candidate([0, 1, 1, 5, 5, 5, 5, 5, 5]) == 2
    assert candidate([2, 3, 5, 3, 0, 3]) == 2
    assert candidate([2, 2, 2, 0, 2]) == 2
    assert candidate([1, 1, 1]) == 2
    assert candidate([7, 7, 7, 7, 7, 7, 7, 7, 4, 5]) == 2
    assert candidate([2, 2, 2, 2, 4]) == 2
    assert candidate([3, 3, 3, 3]) == 2
    assert candidate([1, 0]) == 1
    assert candidate([6, 6, 6, 6, 6, 6, 6, 0, 4, 9]) == 2
    assert candidate([4, 4, 4, 4, 4, 5]) == 2
    assert candidate([2, 3, 2, 1]) == 2
    assert candidate([3, 3, 3, 3, 2, 2, 2, 2, 1]) == 2
    assert candidate([1, 5, 3, 0, 3, 6, 2]) == 1
    assert candidate([1, 1, 1, 1, 1]) == 2
    assert candidate([0, 0]) == 1
    assert candidate([4, 4, 4, 4, 4, 0, 1]) == 2
    assert candidate([4, 3, 1, 5, 1, 4, 2, 1, 6]) == 2
    assert candidate([6, 4, 0, 7, 5, 7, 5, 6, 0]) == 2
    assert candidate([5, 5, 5, 5, 5, 5]) == 2
    assert candidate([0, 3, 4, 3, 4, 1]) == 2
    assert candidate([1, 1, 1, 3]) == 2
    assert candidate([0, 1, 0]) == 1
    assert candidate([1, 1, 0]) == 1
    assert candidate([1, 7, 6, 4, 1, 2, 1, 6, 4]) == 2
    assert candidate([2, 2, 2, 4, 4, 4, 4, 4]) == 3
    assert candidate([1, 3, 5, 2, 4, 6, 7, 5, 6]) == 2
    assert candidate([1, 1, 1, 1, 2, 2, 2, 3]) == 2
    assert candidate([3, 5, 3, 2, 0, 3, 3, 7]) == 2
    assert candidate([6, 6, 6, 6, 6, 6, 6]) == 2
    assert candidate([7, 9, 0, 3, 6, 9, 4, 0, 8, 7]) == 2
    assert candidate([0, 0, 0]) == 1
    assert candidate([2, 2, 2, 2, 1, 3, 3, 6]) == 2
    assert candidate([2, 2, 2, 2, 2, 2, 6]) == 2
    assert candidate([5, 3, 9, 2, 4, 2, 1, 2, 8, 6]) == 2
    assert candidate([2, 2, 2, 0, 0, 6, 6, 2, 5, 4]) == 1
    assert candidate([2, 0, 1]) == 1
    assert candidate([2, 2, 0]) == 2
    assert candidate([2, 2, 2, 2, 1, 0]) == 1
    assert candidate([2, 2, 2, 2, 4, 5, 0]) == 2
    assert candidate([0, 1, 2]) == 1
    assert candidate([1, 1, 3, 3, 3, 3, 7, 8, 2]) == 2
    assert candidate([1, 2, 0, 4, 4]) == 2
    assert candidate([1, 1, 0, 0]) == 1
    assert candidate([1, 7, 8, 7, 1, 0, 7, 3, 8]) == 2
    assert candidate([2, 2, 2, 1]) == 2
    assert candidate([1, 8, 6, 3, 3, 4, 3, 2, 3]) == 2
    assert candidate([8, 1, 6, 4, 1, 2, 2, 3, 3]) == 2
    assert candidate([2, 2, 2, 1, 1, 5]) == 2
    assert candidate([1, 3, 3, 3, 2]) == 2
    assert candidate([1, 3, 2, 3]) == 2
    assert candidate([1, 1, 2]) == 2
    assert candidate([0, 3, 6, 3, 0, 2, 3]) == 1
    assert candidate([7, 7, 7, 7, 7, 7, 7, 7, 2, 0]) == 2
    assert candidate([5, 4, 4, 4, 4, 7, 1, 4]) == 2
    assert candidate([3, 3, 3, 3, 0]) == 2
    assert candidate([7, 7, 4, 0, 2, 1, 5, 2]) == 2
    assert candidate([0, 2, 2]) == 2
    assert candidate([7, 7, 7, 7, 7, 7, 7, 7]) == 2
    assert candidate([2, 2, 0, 3]) == 2
    assert candidate([3, 3, 3, 3, 0, 5]) == 2
    assert candidate([4, 4, 4, 2, 5, 0]) == 2
    assert candidate([1, 1, 3, 2]) == 2
    assert candidate([0, 3, 0, 2, 4]) == 1
    assert candidate([0, 3, 3, 3, 3, 1, 1]) == 1
    assert candidate([0, 4, 1, 2, 0, 6, 6]) == 2
    assert candidate([4, 4, 4, 4, 4, 5, 3, 6, 5, 5]) == 2
    assert candidate([2, 0, 1, 0]) == 1
    assert candidate([0, 5, 5, 5, 5, 5, 5]) == 2
    assert candidate([0, 5, 4, 4, 3, 5]) == 2
    assert candidate([6, 6, 6, 6, 6, 6, 6, 2, 7]) == 2
    assert candidate([1, 5, 3, 7, 2, 3, 1, 2, 8]) == 2
    assert candidate([3, 3, 3, 3, 2]) == 2
    assert candidate([3, 3, 3, 3, 0, 2]) == 2
    assert candidate([2, 3, 9, 0, 1, 3, 9, 2, 6, 1]) == 2


def test_check():
    check(countWays)


### Metadata below ###
# question_id = 3104
# question_title = Happy Students
# question_title_slug = happy-students
# question_difficulty = Medium
# question_category = Algorithms
# question_likes = 144
# question_dislikes = 272
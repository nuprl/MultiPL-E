from typing import List

def numberOfEmployeesWhoMetTarget(hours: List[int], target: int) -> int:
    """
    There are n employees in a company, numbered from 0 to n - 1. Each employee i has worked for hours[i] hours in the company.
    
    The company requires each employee to work for at least target hours.
    
    You are given a 0-indexed array of non-negative integers hours of length n and a non-negative integer target.
    
    Return the integer denoting the number of employees who worked at least target hours.
    
    Example 1:
    
    Input: hours = [0,1,2,3,4], target = 2
    Output: 3
    Explanation: The company wants each employee to work for at least 2 hours.
    - Employee 0 worked for 0 hours and didn't meet the target.
    - Employee 1 worked for 1 hours and didn't meet the target.
    - Employee 2 worked for 2 hours and met the target.
    - Employee 3 worked for 3 hours and met the target.
    - Employee 4 worked for 4 hours and met the target.
    There are 3 employees who met the target.
    
    Example 2:
    
    Input: hours = [5,1,4,2,2], target = 6
    Output: 0
    Explanation: The company wants each employee to work for at least 6 hours.
    There are 0 employees who met the target.
    
    
    Constraints:
    
     * 1 <= n == hours.length <= 50
     * 0 <= hours[i], target <= 105
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([0, 1, 2, 3, 4], 2) == 3
    assert candidate([5, 1, 4, 2, 2], 6) == 0
    assert candidate([98], 5) == 1
    assert candidate([19], 13) == 1
    assert candidate([70], 13) == 1
    assert candidate([26], 14) == 1
    assert candidate([2], 16) == 0
    assert candidate([77], 19) == 1
    assert candidate([6], 21) == 0
    assert candidate([27], 21) == 1
    assert candidate([36], 22) == 1
    assert candidate([42], 25) == 1
    assert candidate([70], 27) == 1
    assert candidate([2], 28) == 0
    assert candidate([14], 31) == 0
    assert candidate([45], 34) == 1
    assert candidate([44], 35) == 1
    assert candidate([11], 39) == 0
    assert candidate([71], 39) == 1
    assert candidate([91], 45) == 1
    assert candidate([81], 51) == 1
    assert candidate([15], 52) == 0
    assert candidate([90], 59) == 1
    assert candidate([40], 64) == 0
    assert candidate([12], 69) == 0
    assert candidate([83], 70) == 1
    assert candidate([38], 74) == 0
    assert candidate([18], 78) == 0
    assert candidate([60], 83) == 0
    assert candidate([50], 87) == 0
    assert candidate([75], 92) == 0
    assert candidate([91], 96) == 0
    assert candidate([11], 97) == 0
    assert candidate([48, 28], 2) == 2
    assert candidate([38, 46], 3) == 2
    assert candidate([30, 79], 6) == 2
    assert candidate([45, 78], 6) == 2
    assert candidate([20, 69], 10) == 2
    assert candidate([82, 67], 11) == 2
    assert candidate([29, 75], 12) == 2
    assert candidate([97, 37], 17) == 2
    assert candidate([42, 100], 20) == 2
    assert candidate([11, 58], 21) == 1
    assert candidate([12, 46], 21) == 1
    assert candidate([70, 84], 37) == 2
    assert candidate([7, 100], 38) == 1
    assert candidate([47, 94], 40) == 2
    assert candidate([18, 34], 50) == 0
    assert candidate([47, 79], 55) == 1
    assert candidate([74, 99], 56) == 2
    assert candidate([53, 81], 67) == 1
    assert candidate([36, 61], 68) == 0
    assert candidate([48, 98], 71) == 1
    assert candidate([71, 94], 72) == 1
    assert candidate([60, 99], 73) == 1
    assert candidate([12, 12], 74) == 0
    assert candidate([100, 87], 75) == 2
    assert candidate([12, 56], 77) == 0
    assert candidate([15, 36], 86) == 0
    assert candidate([53, 45], 86) == 0
    assert candidate([4, 77], 89) == 0
    assert candidate([23, 29], 93) == 0
    assert candidate([76, 62, 96], 5) == 3
    assert candidate([82, 67, 33], 5) == 3
    assert candidate([28, 96, 39], 10) == 3
    assert candidate([42, 93, 58], 13) == 3
    assert candidate([53, 22, 48], 13) == 3
    assert candidate([68, 81, 61], 13) == 3
    assert candidate([68, 32, 33], 22) == 3
    assert candidate([59, 65, 70], 26) == 3
    assert candidate([15, 43, 21], 29) == 1
    assert candidate([40, 80, 75], 33) == 3
    assert candidate([64, 11, 73], 34) == 2
    assert candidate([1, 74, 34], 44) == 1
    assert candidate([96, 79, 91], 44) == 3
    assert candidate([59, 9, 9], 48) == 1
    assert candidate([79, 48, 62], 53) == 2
    assert candidate([58, 83, 2], 54) == 2
    assert candidate([51, 40, 12], 57) == 0
    assert candidate([54, 2, 80], 60) == 1
    assert candidate([92, 45, 91], 65) == 2
    assert candidate([93, 23, 46], 67) == 1
    assert candidate([17, 60, 1], 70) == 0
    assert candidate([9, 63, 77], 73) == 1
    assert candidate([44, 86, 37], 73) == 1
    assert candidate([75, 37, 68], 73) == 1
    assert candidate([33, 26, 77], 78) == 0
    assert candidate([11, 88, 27], 79) == 1
    assert candidate([12, 48, 44], 80) == 0
    assert candidate([19, 88, 13], 82) == 1
    assert candidate([61, 56, 67], 82) == 0
    assert candidate([46, 24, 38], 84) == 0
    assert candidate([93, 51, 83], 85) == 1
    assert candidate([58, 14, 83], 87) == 0
    assert candidate([52, 33, 56], 89) == 0
    assert candidate([34, 73, 46], 91) == 0
    assert candidate([26, 59, 55], 94) == 0
    assert candidate([41, 89, 34], 100) == 0
    assert candidate([9, 26, 77, 55], 0) == 4
    assert candidate([24, 79, 63, 37], 1) == 4


def test_check():
    check(numberOfEmployeesWhoMetTarget)


### Metadata below ###
# question_id = 2876
# question_title = Number of Employees Who Met the Target
# question_title_slug = number-of-employees-who-met-the-target
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 362
# question_dislikes = 46
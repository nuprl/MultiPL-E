from typing import List


def average(salary: List[int]) -> int:
    """
    You are given an array of unique integers salary where salary[i] is the salary of the ith employee.
    Return the average salary of employees excluding the minimum and maximum salary. Answers within 10-5 of the actual answer will be accepted.
 
    Example 1:

    Input: salary = [4000,3000,1000,2000]
    Output: 2500.00000
    Explanation: Minimum salary and maximum salary are 1000 and 4000 respectively.
    Average salary excluding minimum and maximum salary is (2000+3000) / 2 = 2500

    Example 2:

    Input: salary = [1000,2000,3000]
    Output: 2000.00000
    Explanation: Minimum salary and maximum salary are 1000 and 3000 respectively.
    Average salary excluding minimum and maximum salary is (2000) / 1 = 2000

 
    Constraints:

    3 <= salary.length <= 100
    1000 <= salary[i] <= 106
    All the integers of salary are unique.

    """
    ### Canonical solution below ###
    min_salary = min(salary)
    max_salary = max(salary)
    sum_salaries = sum(salary)
    sum_salaries -= (min_salary + max_salary)
    return sum_salaries / (len(salary) - 2)




### Unit tests below ###
def check(candidate):
	assert candidate([4000, 3000, 1000, 2000]) == 2500
	assert candidate([10000, 9000, 8000, 7000, 6000, 5000, 4000]) == 7000
	assert candidate([3000, 4000, 5000, 6000, 7000]) == 5000
	assert candidate([20000, 4000, 8000, 12000, 16000]) == 12000
	assert candidate([100000, 200000, 300000, 400000, 500000, 600000, 700000, 800000, 900000]) == 500000
	assert candidate([10000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000]) == 6000
	assert candidate([6000, 5000, 4000, 3000, 2000]) == 4000
	assert candidate([3000, 6000, 9000, 12000, 15000, 18000, 21000, 24000, 27000, 30000]) == 16500
	assert candidate([4000, 8000, 12000, 16000, 20000, 24000, 28000, 32000, 36000, 40000]) == 22000
	assert candidate([10000, 2000, 3000, 4000, 5000]) == 4000
	assert candidate([8000, 7000, 6000, 5000, 4000, 3000, 2000]) == 5000
	assert candidate([2000, 3000, 4000, 5000, 6000, 7000]) == 4500
	assert candidate([5000, 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000]) == 27500
	assert candidate([1000, 2000, 3000, 4000, 5000, 6000, 7000, 8000, 9000, 10000]) == 5500
	assert candidate([20000, 30000, 40000, 50000, 60000, 70000, 80000, 90000, 100000]) == 60000
	assert candidate([2000, 4000, 6000, 8000, 10000, 12000, 14000, 16000, 18000, 20000]) == 11000
	assert candidate([2000, 3000, 4000, 5000]) == 3500
	assert candidate([10000, 20000, 30000, 40000, 50000, 60000, 70000, 80000, 90000, 100000]) == 55000
	assert candidate([9000, 8000, 7000, 6000, 5000, 4000, 3000]) == 6000
def test_check():
	check(average)
# Metadata Difficulty: Easy
# Metadata Topics: array,sorting
# Metadata Coverage: 100

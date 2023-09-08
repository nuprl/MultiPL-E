def day_of_the_week(day: int, month: int, year: int) -> str:
    """
    Given a date, return the corresponding day of the week for that date.
    The input is given as three integers representing the day, month and year respectively.
    Return the answer as one of the following values {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}.
 
    Example 1:

    Input: day = 31, month = 8, year = 2019
    Output: "Saturday"

    Example 2:

    Input: day = 18, month = 7, year = 1999
    Output: "Sunday"

    Example 3:

    Input: day = 15, month = 8, year = 1993
    Output: "Sunday"

 
    Constraints:

    The given dates are valid dates between the years 1971 and 2100.

    """
    ### Canonical solution below ###
    days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    if month < 3:
        month += 12
        year -= 1
    k = year % 100
    j = year // 100
    day_of_week = (day + 13 * (month + 1) // 5 + k + k // 4 + 5 * j + j // 4) % 7
    return days[day_of_week]




### Unit tests below ###
def check(candidate):
	assert candidate(24,7,1800) == "Friday"
	assert candidate(11, 1, 2019) == "Saturday"
	assert candidate(31,12,1600) == "Monday"
	assert candidate(10, 11, 2017) == "Saturday"
	assert candidate(3, 10, 1980) == "Saturday"
	assert candidate(21,12,1600) == "Friday"
	assert candidate(2,6,1869) == "Thursday"
	assert candidate(29,1,2020) == "Thursday"
	assert candidate(19,12,2017) == "Wednesday"
def test_check():
	check(day_of_the_week)
# Metadata Difficulty: Easy
# Metadata Topics: math
# Metadata Coverage: 100

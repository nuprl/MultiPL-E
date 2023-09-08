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
    from datetime import date
    days = ["Sunday ", "Monday ", "Tuesday ", "Wednesday ", "Thursday ", "Friday ", "Saturday "]
    return days[date(year, month, day).weekday()]




### Unit tests below ###
def check(candidate):
	assert candidate(17, 10, 2019) == "Wednesday "
	assert candidate(23, 10, 2050) == "Saturday "
	assert candidate(20, 6, 1994) == "Sunday "
	assert candidate(21, 8, 1988) == "Saturday "
	assert candidate(11, 1, 2017) == "Tuesday "
	assert candidate(13, 10, 1862) == "Sunday "
	assert candidate(19, 12, 2016) == "Sunday "
	assert candidate(21, 3, 2011) == "Sunday "
	assert candidate(20, 11, 2015) == "Thursday "
	assert candidate(31, 8, 2100) == "Monday "
	assert candidate(26, 4, 1969) == "Friday "
	assert candidate(15, 5, 1995) == "Sunday "
	assert candidate(31, 7, 1967) == "Sunday "
def test_check():
	check(day_of_the_week)
# Metadata Difficulty: Easy
# Metadata Topics: math
# Metadata Coverage: 100

def day_of_year(date: str) -> int:
    """
    Given a string date representing a Gregorian calendar date formatted as YYYY-MM-DD, return the day number of the year.
 
    Example 1:

    Input: date = "2019-01-09"
    Output: 9
    Explanation: Given date is the 9th day of the year in 2019.

    Example 2:

    Input: date = "2019-02-10"
    Output: 41

 
    Constraints:

    date.length == 10
    date[4] == date[7] == '-', and all other date[i]'s are digits
    date represents a calendar date between Jan 1st, 1900 and Dec 31th, 2019.

    """
    ### Canonical solution below ###
    def is_leap_year(year: int) -> bool:
        return (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0)
    days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    year, month, day = int(date[:4]), int(date[5:7]), int(date[8:])

    if is_leap_year(year):
        days_in_month[1] = 29

    return sum(days_in_month[:month-1]) + day




### Unit tests below ###
def check(candidate):
	assert candidate("2000-12-01") == 336
	assert candidate("2019-02-01") == 32
	assert candidate("2019-01-09") == 9
	assert candidate("1900-09-01") == 244
	assert candidate("2019-12-01") == 335
	assert candidate("2019-10-01") == 274
	assert candidate("2019-07-01") == 182
	assert candidate("2000-07-01") == 183
	assert candidate("2019-02-28") == 59
	assert candidate("2019-01-01") == 1
	assert candidate("2019-09-01") == 244
	assert candidate("2019-03-01") == 60
	assert candidate("1900-01-09") == 9
	assert candidate("2019-05-01") == 121
	assert candidate("1900-01-10") == 10
	assert candidate("1900-08-01") == 213
	assert candidate("2000-01-30") == 30
	assert candidate("2019-01-31") == 31
	assert candidate("2019-03-02") == 61
	assert candidate("2000-11-01") == 306
	assert candidate("1900-12-31") == 365
	assert candidate("2019-12-31") == 365
	assert candidate("2000-08-01") == 214
	assert candidate("2000-09-01") == 245
	assert candidate("1900-01-01") == 1
	assert candidate("2000-12-31") == 366
	assert candidate("1900-12-01") == 335
	assert candidate("1900-02-28") == 59
	assert candidate("2019-06-01") == 152
	assert candidate("1900-10-01") == 274
	assert candidate("1900-06-01") == 152
	assert candidate("2000-01-01") == 1
	assert candidate("2000-03-01") == 61
	assert candidate("2000-06-01") == 153
	assert candidate("2019-04-01") == 91
	assert candidate("2000-01-31") == 31
	assert candidate("2019-02-10") == 41
	assert candidate("2019-08-01") == 213
	assert candidate("1900-03-01") == 60
	assert candidate("2000-04-01") == 92
	assert candidate("2019-11-01") == 305
	assert candidate("2000-10-01") == 275
	assert candidate("2000-02-29") == 60
	assert candidate("1900-07-01") == 182
def test_check():
	check(day_of_year)
# Metadata Difficulty: Easy
# Metadata Topics: math,string
# Metadata Coverage: 100

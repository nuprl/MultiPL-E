def dayOfYear(date: str) -> int:
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
    year, month, day = map(int, date.split('-'))

    daysInMonth = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    if year % 4 == 0 and (year % 100 != 0 or year % 400 == 0):
        daysInMonth[2] = 29

    dayOfYear = sum(daysInMonth[:month]) + day
    return dayOfYear




### Unit tests below ###
def check(candidate):
	assert candidate("1998-01-04") == 4
	assert candidate("2021-12-01") == 335
	assert candidate("2021-08-01") == 213
	assert candidate("2020-09-01") == 245
	assert candidate("1999-01-01") == 1
	assert candidate("1998-11-10") == 314
	assert candidate("2020-10-01") == 275
	assert candidate("2020-11-01") == 306
	assert candidate("2001-03-01") == 60
	assert candidate("2001-02-01") == 32
	assert candidate("2020-07-01") == 183
	assert candidate("1998-01-06") == 6
	assert candidate("2021-06-01") == 152
	assert candidate("1998-01-05") == 5
	assert candidate("2001-04-01") == 91
	assert candidate("2000-12-31") == 366
	assert candidate("2020-10-02") == 276
	assert candidate("2020-04-01") == 92
	assert candidate("1998-01-02") == 2
	assert candidate("1998-01-07") == 7
	assert candidate("2020-02-02") == 33
	assert candidate("2022-12-31") == 365
	assert candidate("2021-02-01") == 32
	assert candidate("2020-07-03") == 185
	assert candidate("2021-01-01") == 1
	assert candidate("2020-05-02") == 123
	assert candidate("2021-05-01") == 121
	assert candidate("2020-12-01") == 336
	assert candidate("1998-01-10") == 10
	assert candidate("2020-12-31") == 366
	assert candidate("2021-03-01") == 60
	assert candidate("1998-01-09") == 9
	assert candidate("2021-04-01") == 91
	assert candidate("2021-10-01") == 274
	assert candidate("2000-01-01") == 1
	assert candidate("1998-01-08") == 8
	assert candidate("1998-01-01") == 1
	assert candidate("2020-03-01") == 61
	assert candidate("1999-12-31") == 365
	assert candidate("2021-05-02") == 122
	assert candidate("2020-09-02") == 246
	assert candidate("2021-01-02") == 2
	assert candidate("2021-07-01") == 182
	assert candidate("2021-09-01") == 244
	assert candidate("1998-01-03") == 3
	assert candidate("2024-02-29") == 60
	assert candidate("2021-09-02") == 245
	assert candidate("2000-02-29") == 60
	assert candidate("2021-11-01") == 305
	assert candidate("1999-10-10") == 283
	assert candidate("2001-01-01") == 1
	assert candidate("2021-06-02") == 153
	assert candidate("2020-06-01") == 153
	assert candidate("2020-05-01") == 122
	assert candidate("2020-07-02") == 184
	assert candidate("2020-01-01") == 1
	assert candidate("2020-11-02") == 307
	assert candidate("2020-08-01") == 214
	assert candidate("2020-02-01") == 32
	assert candidate("2100-02-28") == 59
	assert candidate("1998-01-11") == 11
def test_check():
	check(dayOfYear)
# Metadata Difficulty: Easy
# Metadata Topics: math,string
# Metadata Coverage: 100

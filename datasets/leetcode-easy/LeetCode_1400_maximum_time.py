def maximum_time(time: str) -> str:
    """
    You are given a string time in the form of  hh:mm, where some of the digits in the string are hidden (represented by ?).
    The valid times are those inclusively between 00:00 and 23:59.
    Return the latest valid time you can get from time by replacing the hidden digits.
 
    Example 1:

    Input: time = "2?:?0"
    Output: "23:50"
    Explanation: The latest hour beginning with the digit '2' is 23 and the latest minute ending with the digit '0' is 50.

    Example 2:

    Input: time = "0?:3?"
    Output: "09:39"

    Example 3:

    Input: time = "1?:22"
    Output: "19:22"

 
    Constraints:

    time is in the format hh:mm.
    It is guaranteed that you can produce a valid time from the given string.

    """
    ### Canonical solution below ###
    time = list(time)
    if time[0] == "?":
        time[0] = "2" if time[1] == "?" or int(time[1]) < 4 else "1"
    if time[1] == "?":
        time[1] = "3" if time[0] == "2" else "9"
    if time[3] == "?":
        time[3] = "5"
    if time[4] == "?":
        time[4] = "9"
    return "".join(time)




### Unit tests below ###
def check(candidate):
	assert candidate("?6:??") == "16:59"
	assert candidate("?4:??") == "14:59"
	assert candidate("0?:??") == "09:59"
	assert candidate("?8:??") == "18:59"
	assert candidate("?2:??") == "22:59"
	assert candidate("??:??") == "23:59"
	assert candidate("?5:??") == "15:59"
	assert candidate("1?:4?") == "19:49"
	assert candidate("2?:?9") == "23:59"
	assert candidate("??:3?") == "23:39"
	assert candidate("0?:0?") == "09:09"
	assert candidate("?1:??") == "21:59"
	assert candidate("1?:??") == "19:59"
	assert candidate("?3:??") == "23:59"
	assert candidate("?9:??") == "19:59"
	assert candidate("?7:??") == "17:59"
	assert candidate("?0:??") == "20:59"
def test_check():
	check(maximum_time)
# Metadata Difficulty: Easy
# Metadata Topics: string,greedy
# Metadata Coverage: 100

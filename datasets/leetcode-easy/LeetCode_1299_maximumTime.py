def maximumTime(time: str) -> str:
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
    time_list = list(time)
    if time_list[0] == '?':
        time_list[0] = '2' if time_list[1] <= '3' or time_list[1] == '?' else '1'
    if time_list[1] == '?':
        time_list[1] = '3' if time_list[0] == '2' else '9'
    if time_list[3] == '?':
        time_list[3] = '5'
    if time_list[4] == '?':
        time_list[4] = '9'
    return "".join(time_list)




### Unit tests below ###
def check(candidate):
	assert candidate("1?:22") == "19:22"
	assert candidate("??:5?") == "23:59"
	assert candidate("??:45") == "23:45"
	assert candidate("2?:??") == "23:59"
	assert candidate("??:?0") == "23:50"
	assert candidate("2?:?0") == "23:50"
	assert candidate("13:?2") == "13:52"
	assert candidate("??:1?") == "23:19"
	assert candidate("0?:3?") == "09:39"
	assert candidate("2?:1?") == "23:19"
	assert candidate(
    "?4:1?") == "14:19"
	assert candidate("0?:?4") == "09:54"
	assert candidate("1?:2?") == "19:29"
	assert candidate("1?:??") == "19:59"
	assert candidate("?4:1?") == "14:19"
	assert candidate("?4:?3") == "14:53"
	assert candidate("09:??") == "09:59"
	assert candidate("2?:?2") == "23:52"
	assert candidate("??:4?") == "23:49"
	assert candidate("??:?9") == "23:59"
	assert candidate("??:??") == "23:59"
	assert candidate("??:3?") == "23:39"
	assert candidate("11:?1") == "11:51"
	assert candidate("1?:30") == "19:30"
	assert candidate("?4:??") == "14:59"
def test_check():
	check(maximumTime)
# Metadata Difficulty: Easy
# Metadata Topics: string,greedy
# Metadata Coverage: 100

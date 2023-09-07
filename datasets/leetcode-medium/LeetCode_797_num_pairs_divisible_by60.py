from typing import List


def num_pairs_divisible_by60(time: List[int]) -> int:
    """
    You are given a list of songs where the ith song has a duration of time[i] seconds.
    Return the number of pairs of songs for which their total duration in seconds is divisible by 60. Formally, we want the number of indices i, j such that i < j with (time[i] + time[j]) % 60 == 0.
 
    Example 1:

    Input: time = [30,20,150,100,40]
    Output: 3
    Explanation: Three pairs have a total duration divisible by 60:
    (time[0] = 30, time[2] = 150): total duration 180
    (time[1] = 20, time[3] = 100): total duration 120
    (time[1] = 20, time[4] = 40): total duration 60

    Example 2:

    Input: time = [60,60,60]
    Output: 3
    Explanation: All three pairs have a total duration of 120, which is divisible by 60.

 
    Constraints:

    1 <= time.length <= 6 * 104
    1 <= time[i] <= 500

    """
    ### Canonical solution below ###
    count = [0] * 60
    pairs = 0

    for t in time:
        mod = t % 60
        pairs += count[(60 - mod) % 60]
        count[mod] += 1

    return pairs




### Unit tests below ###
def check(candidate):
	assert candidate([60,120,180,240,300,360]) == 15
	assert candidate([60,60,60]) == 3
	assert candidate([60,120,180,240,300,360,420,480,540,600,660,720,780,840,900,960]) == 120
	assert candidate([30,20,150,100,40]) == 3
	assert candidate([120,240,360]) == 3
	assert candidate([5,35,65,95]) == 0
	assert candidate([60,120,180,240,300,360,420,480,540,600]) == 45
	assert candidate([1,61,121,181,241,301,361,421,481,541,601,661,721,781,841,901,961]) == 0
	assert candidate([30,30,30,30]) == 6
def test_check():
	check(num_pairs_divisible_by60)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,counting
# Metadata Coverage: 100

from typing import List


def videoStitching(clips: List[List[int]], time: int) -> int:
    """
    You are given a series of video clips from a sporting event that lasted time seconds. These video clips can be overlapping with each other and have varying lengths.
    Each video clip is described by an array clips where clips[i] = [starti, endi] indicates that the ith clip started at starti and ended at endi.
    We can cut these clips into segments freely.

    For example, a clip [0, 7] can be cut into segments [0, 1] + [1, 3] + [3, 7].

    Return the minimum number of clips needed so that we can cut the clips into segments that cover the entire sporting event [0, time]. If the task is impossible, return -1.
 
    Example 1:

    Input: clips = [[0,2],[4,6],[8,10],[1,9],[1,5],[5,9]], time = 10
    Output: 3
    Explanation: We take the clips [0,2], [8,10], [1,9]; a total of 3 clips.
    Then, we can reconstruct the sporting event as follows:
    We cut [1,9] into segments [1,2] + [2,8] + [8,9].
    Now we have segments [0,2] + [2,8] + [8,10] which cover the sporting event [0, 10].

    Example 2:

    Input: clips = [[0,1],[1,2]], time = 5
    Output: -1
    Explanation: We cannot cover [0,5] with only [0,1] and [1,2].

    Example 3:

    Input: clips = [[0,1],[6,8],[0,2],[5,6],[0,4],[0,3],[6,7],[1,3],[4,7],[1,4],[2,5],[2,6],[3,4],[4,5],[5,7],[6,9]], time = 9
    Output: 3
    Explanation: We can take clips [0,4], [4,7], and [6,9].

 
    Constraints:

    1 <= clips.length <= 100
    0 <= starti <= endi <= 100
    1 <= time <= 100

    """
    ### Canonical solution below ###
    dp = [float('inf')] * (time + 1)
    dp[0] = 0
    for i in range(1, time + 1):
        for clip in clips:
            if clip[0] < i and i <= clip[1]:
                dp[i] = min(dp[i], dp[clip[0]] + 1)
    return -1 if dp[time] == float('inf') else dp[time]




### Unit tests below ###
def check(candidate):
	assert candidate([[0, 1], [1, 2]], 2) == 2
	assert candidate([[0, 2], [2, 3], [4, 5]], 5) == -1
	assert candidate([[0, 1], [6, 8], [0, 2], [5, 6], [0, 4], [0, 3], [6, 7], [1, 3], [4, 7], [1, 4], [2, 5], [2, 6], [3, 4], [4, 5], [5, 7], [6, 9]], 9) == 3
	assert candidate([[0, 2], [4, 6], [8, 10], [1, 9], [1, 5], [5, 9]], 8) == 2
	assert candidate([[0, 1], [1, 2], [2, 3], [3, 4]], 5) == -1
	assert candidate([[0, 2], [4, 6], [8, 10], [1, 9], [1, 5], [5, 9]], 9) == 2
	assert candidate([[0, 1]], 2) == -1
	assert candidate([[0, 1], [1, 2]], 5) == -1
	assert candidate([[0, 1], [1, 2], [2, 3], [3, 4], [4, 5], [5, 6]], 6) == 6
	assert candidate([[0, 2], [2, 3], [3, 4], [4, 5]], 4) == 3
	assert candidate([[0, 1], [0, 5], [0, 4], [0, 3], [0, 2]], 5) == 1
	assert candidate([[0, 2], [2, 4]], 4) == 2
	assert candidate([[0, 1], [2, 3]], 3) == -1
	assert candidate([[0, 2], [1, 3], [3, 4], [4, 5]], 5) == 4
	assert candidate([[0, 1], [1, 2], [2, 3], [4, 5]], 5) == -1
	assert candidate([[0, 2], [2, 3], [3, 4], [4, 5]], 5) == 4
	assert candidate([[0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7], [0, 8], [0, 9]], 1) == 1
	assert candidate([[0, 1], [1, 2], [2, 3], [3, 4], [4, 5]], 5) == 5
	assert candidate([[0, 4]], 4) == 1
	assert candidate([[0, 1], [1, 2], [2, 3], [3, 4], [4, 5], [5, 6]], 5) == 5
	assert candidate([[0, 1], [0, 2]], 2) == 1
	assert candidate([[0, 2], [4, 6], [8, 10], [1, 9], [1, 5], [5, 9]], 10) == 3
	assert candidate([[0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7], [0, 8], [0, 9], [0, 10]], 10) == 1
	assert candidate([[0, 1], [0, 2]], 1) == 1
	assert candidate([[0, 1]], 1) == 1
	assert candidate([[0, 1], [1, 2], [2, 3], [3, 4], [4, 5]], 3) == 3
	assert candidate([[0, 1], [1, 2], [2, 3], [3, 4]], 4) == 4
	assert candidate([[0, 1]], 3) == -1
def test_check():
	check(videoStitching)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,greedy
# Metadata Coverage: 100

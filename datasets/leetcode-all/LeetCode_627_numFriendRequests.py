from typing import List


def numFriendRequests(ages: List[int]) -> int:
    """
    There are n persons on a social media website. You are given an integer array ages where ages[i] is the age of the ith person.
    A Person x will not send a friend request to a person y (x != y) if any of the following conditions is true:

    age[y] <= 0.5 * age[x] + 7
    age[y] > age[x]
    age[y] > 100 && age[x] < 100

    Otherwise, x will send a friend request to y.
    Note that if x sends a request to y, y will not necessarily send a request to x. Also, a person will not send a friend request to themself.
    Return the total number of friend requests made.
 
    Example 1:

    Input: ages = [16,16]
    Output: 2
    Explanation: 2 people friend request each other.

    Example 2:

    Input: ages = [16,17,18]
    Output: 2
    Explanation: Friend requests are made 17 -> 16, 18 -> 17.

    Example 3:

    Input: ages = [20,30,100,110,120]
    Output: 3
    Explanation: Friend requests are made 110 -> 100, 120 -> 110, 120 -> 100.

 
    Constraints:

    n == ages.length
    1 <= n <= 2 * 104
    1 <= ages[i] <= 120

    """
    ### Canonical solution below ###
    count = [0] * 121
    total_requests = 0

    for age in ages:
        count[age] += 1

    for a in range(1, 121):
        for b in range(1, 121):
            if a * 0.5 + 7 >= b:
                continue
            if a < b:
                continue
            if a < b * 2:
                total_requests += count[a] * count[b]
                if a == b:
                    total_requests -= count[a]

    return total_requests




### Unit tests below ###
def check(candidate):
	assert candidate([0,10,5,2]) == 0
	assert candidate([20,30,100,110,120]) == 3
	assert candidate([20,21,22,23,24,25]) == 15
	assert candidate([0,2,1,0]) == 0
	assert candidate([0,1,0]) == 0
	assert candidate([101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120]) == 190
	assert candidate([25,25,25,25,25]) == 20
	assert candidate([16,17,18]) == 2
def test_check():
	check(numFriendRequests)
# Metadata Difficulty: Medium
# Metadata Topics: array,two-pointers,binary-search,sorting
# Metadata Coverage: 100

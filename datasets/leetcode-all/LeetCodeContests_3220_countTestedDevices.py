from typing import List

def countTestedDevices(batteryPercentages: List[int]) -> int:
    """
    You are given a 0-indexed integer array batteryPercentages having length n, denoting the battery percentages of n 0-indexed devices.
    Your task is to test each device i in order from 0 to n - 1, by performing the following test operations:
    
    If batteryPercentages[i] is greater than 0:
    
    	
    Increment the count of tested devices.
    Decrease the battery percentage of all devices with indices j in the range [i + 1, n - 1] by 1, ensuring their battery percentage never goes below 0, i.e, batteryPercentages[j] = max(0, batteryPercentages[j] - 1).
    Move to the next device.
    
    
    Otherwise, move to the next device without performing any test.
    
    Return an integer denoting the number of devices that will be tested after performing the test operations in order.
    
    Example 1:
    
    Input: batteryPercentages = [1,1,2,1,3]
    Output: 3
    Explanation: Performing the test operations in order starting from device 0:
    At device 0, batteryPercentages[0] > 0, so there is now 1 tested device, and batteryPercentages becomes [1,0,1,0,2].
    At device 1, batteryPercentages[1] == 0, so we move to the next device without testing.
    At device 2, batteryPercentages[2] > 0, so there are now 2 tested devices, and batteryPercentages becomes [1,0,1,0,1].
    At device 3, batteryPercentages[3] == 0, so we move to the next device without testing.
    At device 4, batteryPercentages[4] > 0, so there are now 3 tested devices, and batteryPercentages stays the same.
    So, the answer is 3.
    
    Example 2:
    
    Input: batteryPercentages = [0,1,2]
    Output: 2
    Explanation: Performing the test operations in order starting from device 0:
    At device 0, batteryPercentages[0] == 0, so we move to the next device without testing.
    At device 1, batteryPercentages[1] > 0, so there is now 1 tested device, and batteryPercentages becomes [0,1,1].
    At device 2, batteryPercentages[2] > 0, so there are now 2 tested devices, and batteryPercentages stays the same.
    So, the answer is 2.
    
    
    Constraints:
    
    1 <= n == batteryPercentages.length <= 100 
    0 <= batteryPercentages[i] <= 100
    """
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 1, 2, 1, 3]) == 3
    assert candidate([0, 1, 2]) == 2
    assert candidate([0]) == 0
    assert candidate([1]) == 1
    assert candidate([0, 0]) == 0
    assert candidate([0, 1]) == 1
    assert candidate([0, 2]) == 1
    assert candidate([1, 0]) == 1
    assert candidate([1, 2]) == 2
    assert candidate([2, 1]) == 1
    assert candidate([2, 2]) == 2
    assert candidate([0, 0, 1]) == 1
    assert candidate([0, 0, 2]) == 1
    assert candidate([1, 1, 0]) == 1
    assert candidate([1, 2, 0]) == 2
    assert candidate([1, 3, 1]) == 2
    assert candidate([2, 0, 1]) == 1
    assert candidate([2, 2, 0]) == 2
    assert candidate([2, 2, 2]) == 2
    assert candidate([3, 0, 3]) == 2
    assert candidate([3, 3, 1]) == 2
    assert candidate([3, 3, 3]) == 3
    assert candidate([0, 2, 1, 4]) == 2
    assert candidate([1, 4, 4, 1]) == 3
    assert candidate([3, 1, 2, 0]) == 2
    assert candidate([3, 2, 1, 1]) == 2
    assert candidate([3, 2, 1, 3]) == 3
    assert candidate([4, 1, 4, 4]) == 3
    assert candidate([4, 2, 0, 1]) == 2
    assert candidate([4, 2, 1, 3]) == 3
    assert candidate([4, 4, 4, 2]) == 3
    assert candidate([0, 3, 1, 3, 5]) == 3
    assert candidate([0, 4, 2, 5, 3]) == 3
    assert candidate([0, 5, 4, 2, 0]) == 2
    assert candidate([2, 2, 3, 0, 2]) == 3
    assert candidate([2, 3, 5, 0, 1]) == 3
    assert candidate([2, 4, 5, 2, 0]) == 3
    assert candidate([4, 3, 3, 5, 4]) == 4
    assert candidate([5, 4, 1, 0, 3]) == 3
    assert candidate([5, 5, 5, 2, 0]) == 3
    assert candidate([0, 2, 4, 3, 0, 2]) == 3
    assert candidate([0, 4, 5, 3, 3, 2]) == 3
    assert candidate([1, 3, 1, 5, 4, 5]) == 5
    assert candidate([1, 6, 0, 3, 3, 6]) == 4
    assert candidate([3, 1, 3, 5, 2, 0]) == 3
    assert candidate([3, 2, 6, 2, 6, 0]) == 4
    assert candidate([4, 1, 5, 3, 5, 2]) == 4
    assert candidate([4, 3, 3, 2, 4, 3]) == 4
    assert candidate([4, 5, 2, 3, 6, 2]) == 4
    assert candidate([5, 1, 1, 2, 1, 4]) == 3
    assert candidate([5, 1, 6, 6, 3, 6]) == 4
    assert candidate([6, 1, 5, 1, 4, 5]) == 4
    assert candidate([6, 2, 2, 3, 4, 6]) == 5
    assert candidate([6, 2, 3, 0, 2, 0]) == 3
    assert candidate([1, 0, 6, 3, 6, 3, 1]) == 4
    assert candidate([2, 1, 7, 3, 0, 3, 3]) == 3
    assert candidate([2, 3, 7, 0, 6, 4, 4]) == 4
    assert candidate([2, 5, 2, 4, 2, 1, 3]) == 3
    assert candidate([2, 5, 2, 7, 6, 5, 5]) == 5
    assert candidate([4, 2, 6, 4, 7, 6, 7]) == 7
    assert candidate([4, 2, 6, 6, 3, 3, 7]) == 5
    assert candidate([4, 4, 3, 0, 2, 6, 6]) == 5
    assert candidate([5, 2, 2, 3, 4, 6, 6]) == 6
    assert candidate([5, 4, 6, 0, 7, 2, 2]) == 4
    assert candidate([6, 6, 7, 0, 1, 7, 2]) == 4
    assert candidate([0, 5, 1, 4, 5, 0, 4, 8]) == 5
    assert candidate([1, 0, 7, 0, 7, 4, 5, 7]) == 6
    assert candidate([2, 5, 3, 4, 4, 8, 6, 5]) == 6
    assert candidate([2, 6, 3, 4, 5, 6, 2, 6]) == 6
    assert candidate([4, 5, 2, 1, 3, 7, 3, 5]) == 5
    assert candidate([6, 5, 4, 8, 6, 8, 3, 6]) == 6
    assert candidate([7, 4, 0, 8, 5, 5, 2, 0]) == 5
    assert candidate([7, 5, 3, 2, 3, 5, 8, 6]) == 6
    assert candidate([8, 0, 4, 3, 2, 6, 6, 1]) == 5
    assert candidate([8, 3, 0, 1, 0, 8, 6, 8]) == 5
    assert candidate([8, 6, 7, 1, 0, 1, 3, 7]) == 4
    assert candidate([0, 6, 8, 8, 0, 1, 2, 3, 4]) == 4
    assert candidate([2, 7, 9, 7, 2, 9, 0, 3, 9]) == 6
    assert candidate([8, 1, 9, 8, 5, 3, 4, 4, 1]) == 4
    assert candidate([8, 4, 0, 1, 1, 6, 5, 3, 5]) == 5
    assert candidate([8, 4, 1, 5, 8, 5, 8, 7, 9]) == 8
    assert candidate([8, 4, 9, 8, 9, 0, 0, 4, 9]) == 6
    assert candidate([8, 9, 4, 4, 1, 9, 8, 9, 1]) == 7
    assert candidate([2, 5, 8, 9, 1, 5, 10, 9, 6, 3]) == 7
    assert candidate([2, 6, 5, 4, 1, 5, 3, 3, 3, 9]) == 6
    assert candidate([7, 7, 7, 3, 6, 6, 4, 3, 5, 10]) == 6
    assert candidate([9, 3, 10, 1, 8, 2, 4, 3, 3, 0]) == 4
    assert candidate([10, 10, 2, 0, 2, 7, 6, 7, 10, 4]) == 6
    assert candidate([0, 8, 7, 9, 4, 10, 4, 3, 7, 11, 7]) == 7
    assert candidate([1, 2, 3, 5, 6, 11, 3, 2, 11, 0, 8]) == 8
    assert candidate([5, 10, 4, 10, 10, 6, 8, 1, 8, 10, 3]) == 9
    assert candidate([7, 10, 2, 7, 11, 8, 11, 4, 1, 4, 5]) == 6
    assert candidate([7, 11, 0, 4, 1, 10, 5, 3, 2, 0, 2]) == 5
    assert candidate([8, 8, 1, 8, 6, 2, 5, 2, 8, 5, 6]) == 6
    assert candidate([8, 9, 10, 10, 1, 5, 4, 6, 7, 2, 4]) == 7
    assert candidate([9, 9, 2, 3, 2, 2, 9, 6, 11, 1, 10]) == 7
    assert candidate([10, 0, 6, 2, 6, 6, 11, 1, 8, 10, 5]) == 7
    assert candidate([1, 4, 7, 2, 12, 8, 1, 11, 5, 10, 2, 3]) == 7
    assert candidate([2, 5, 4, 4, 9, 6, 10, 0, 11, 8, 2, 10]) == 9
    assert candidate([4, 11, 9, 8, 9, 11, 11, 5, 11, 6, 12, 11]) == 10


def test_check():
    check(countTestedDevices)


### Metadata below ###
# question_id = 3220
# question_title = Count Tested Devices After Test Operations
# question_title_slug = count-tested-devices-after-test-operations
# question_difficulty = Easy
# question_category = Algorithms
# question_likes = 90
# question_dislikes = 5
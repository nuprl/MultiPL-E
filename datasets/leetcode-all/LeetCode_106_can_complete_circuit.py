from typing import List


def can_complete_circuit(gas: List[int], cost: List[int]) -> int:
    """
    There are n gas stations along a circular route, where the amount of gas at the ith station is gas[i].
    You have a car with an unlimited gas tank and it costs cost[i] of gas to travel from the ith station to its next (i + 1)th station. You begin the journey with an empty tank at one of the gas stations.
    Given two integer arrays gas and cost, return the starting gas station's index if you can travel around the circuit once in the clockwise direction, otherwise return -1. If there exists a solution, it is guaranteed to be unique
 
    Example 1:

    Input: gas = [1,2,3,4,5], cost = [3,4,5,1,2]
    Output: 3
    Explanation:
    Start at station 3 (index 3) and fill up with 4 unit of gas. Your tank = 0 + 4 = 4
    Travel to station 4. Your tank = 4 - 1 + 5 = 8
    Travel to station 0. Your tank = 8 - 2 + 1 = 7
    Travel to station 1. Your tank = 7 - 3 + 2 = 6
    Travel to station 2. Your tank = 6 - 4 + 3 = 5
    Travel to station 3. The cost is 5. Your gas is just enough to travel back to station 3.
    Therefore, return 3 as the starting index.

    Example 2:

    Input: gas = [2,3,4], cost = [3,4,3]
    Output: -1
    Explanation:
    You can't start at station 0 or 1, as there is not enough gas to travel to the next station.
    Let's start at station 2 and fill up with 4 unit of gas. Your tank = 0 + 4 = 4
    Travel to station 0. Your tank = 4 - 3 + 2 = 3
    Travel to station 1. Your tank = 3 - 3 + 3 = 3
    You cannot travel back to station 2, as it requires 4 unit of gas but you only have 3.
    Therefore, you can't travel around the circuit once no matter where you start.

 
    Constraints:

    n == gas.length == cost.length
    1 <= n <= 105
    0 <= gas[i], cost[i] <= 104

    """
    ### Canonical solution below ###
    total_gas, total_cost, start, gas_tank = 0, 0, 0, 0
    for i in range(len(gas)):
        total_gas += gas[i]
        total_cost += cost[i]
        gas_tank += gas[i] - cost[i]
        if gas_tank < 0:
            start = i + 1
            gas_tank = 0
    return -1 if total_gas < total_cost else start




### Unit tests below ###
def check(candidate):
	assert candidate([10,20,30,40,50], [1,2,3,4,5]) == 0
	assert candidate([1,1,1,1,1,1,1,1,1,1], [1,1,1,1,1,1,1,1,1,1]) == 0
	assert candidate([1,2,3,4,5], [1,2,3,4,8]) == -1
	assert candidate([5,8,2,8], [6,5,6,6]) == 3
	assert candidate([1,2,3,4,5], [1,2,3,4,5]) == 0
	assert candidate([5,6,2,8,5], [3,4,5,3,8]) == 0
	assert candidate([6,5,6,6], [3,4,5,3]) == 0
	assert candidate([1,1,1,1,1,1,1,1,1,1], [1,1,1,1,1,1,1,1,1,2]) == -1
	assert candidate([10,1,2,3,4,5], [3,4,5,1,2,10]) == 0
	assert candidate([1,2,3,4], [1,2,3,5]) == -1
	assert candidate([0,100,200,300,400,500], [100,100,100,100,100,100]) == 1
	assert candidate([1,2,3,4,5], [1,2,3,4,6]) == -1
	assert candidate([2,3,4], [3,4,3]) == -1
	assert candidate([1,2,3,4,5], [1,2,3,4,7]) == -1
	assert candidate([1,2,3,4,5], [1,2,3,4,9]) == -1
	assert candidate([1,2,3,4,5], [3,4,5,1,2]) == 3
	assert candidate([1,2,3,4], [1,2,3,4]) == 0
	assert candidate([5,1,2,3,4], [4,4,1,5,1]) == 4
	assert candidate([1,2,3,4,5,6,7,8,9,10], [1,2,3,4,5,6,7,8,9,10]) == 0
def test_check():
	check(can_complete_circuit)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy
# Metadata Coverage: 100

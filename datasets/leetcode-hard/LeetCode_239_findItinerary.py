from typing import List


def findItinerary(tickets: List[List[str]]) -> List[str]:
    """
    You are given a list of airline tickets where tickets[i] = [fromi, toi] represent the departure and the arrival airports of one flight. Reconstruct the itinerary in order and return it.
    All of the tickets belong to a man who departs from "JFK", thus, the itinerary must begin with "JFK". If there are multiple valid itineraries, you should return the itinerary that has the smallest lexical order when read as a single string.

    For example, the itinerary ["JFK", "LGA"] has a smaller lexical order than ["JFK", "LGB"].

    You may assume all tickets form at least one valid itinerary. You must use all the tickets once and only once.
 
    Example 1:


    Input: tickets = [["MUC","LHR"],["JFK","MUC"],["SFO","SJC"],["LHR","SFO"]]
    Output: ["JFK","MUC","LHR","SFO","SJC"]

    Example 2:


    Input: tickets = [["JFK","SFO"],["JFK","ATL"],["SFO","ATL"],["ATL","JFK"],["ATL","SFO"]]
    Output: ["JFK","ATL","JFK","SFO","ATL","SFO"]
    Explanation: Another possible reconstruction is ["JFK","SFO","ATL","JFK","ATL","SFO"] but it is larger in lexical order.

 
    Constraints:

    1 <= tickets.length <= 300
    tickets[i].length == 2
    fromi.length == 3
    toi.length == 3
    fromi and toi consist of uppercase English letters.
    fromi != toi

    """
    ### Canonical solution below ###
    from collections import defaultdict
    flights = defaultdict(list)
    itinerary = []

    for ticket in tickets:
        flights[ticket[0]].append(ticket[1])
        flights[ticket[0]].sort(reverse=True)

    def dfs(airport):
        while flights[airport]:
            dfs(flights[airport].pop())
        itinerary.append(airport)

    dfs("JFK")

    return itinerary[::-1]




### Unit tests below ###
def check(candidate):
	assert candidate([["MUC", "LHR"], ["JFK", "MUC"], ["SFO", "SJC"], ["LHR", "SFO"]]) == ["JFK", "MUC", "LHR", "SFO", "SJC"]
	assert candidate([["JFK", "ATL"], ["ATL", "JFK"]]) == ["JFK", "ATL", "JFK"]
	assert candidate([["JFK", "SFO"], ["SFO", "JFK"], ["JFK", "ATL"], ["ATL", "SFO"], ["SFO", "JFK"]]) == ["JFK", "ATL", "SFO", "JFK", "SFO", "JFK"]
	assert candidate([["JFK", "ATL"], ["ATL", "JFK"], ["JFK", "ATL"]]) == ["JFK", "ATL", "JFK", "ATL"]
	assert candidate([["JFK", "ATL"], ["ATL", "JFK"], ["JFK", "SFO"]]) == ["JFK", "ATL", "JFK", "SFO"]
	assert candidate([["JFK", "ATL"], ["ATL", "SFO"], ["SFO", "ATL"], ["ATL", "JFK"]]) == ["JFK", "ATL", "SFO", "ATL", "JFK"]
	assert candidate([["JFK", "SFO"], ["SFO", "JFK"]]) == ["JFK", "SFO", "JFK"]
	assert candidate([["JFK", "ATL"], ["ATL", "SFO"], ["SFO", "JFK"]]) == ["JFK", "ATL", "SFO", "JFK"]
	assert candidate([["JFK", "ATL"], ["ATL", "SFO"], ["JFK", "ATL"], ["ATL", "JFK"], ["SFO", "JFK"]]) == ["JFK", "ATL", "JFK", "ATL", "SFO", "JFK"]
	assert candidate([["JFK", "SFO"], ["JFK", "ATL"], ["SFO", "ATL"], ["ATL", "JFK"], ["ATL", "SFO"]]) == ["JFK", "ATL", "JFK", "SFO", "ATL", "SFO"]
	assert candidate([["JFK", "ATL"], ["ATL", "JFK"], ["JFK", "SFO"], ["SFO", "ATL"], ["ATL", "JFK"]]) == ["JFK", "ATL", "JFK", "SFO", "ATL", "JFK"]
def test_check():
	check(findItinerary)
# Metadata Difficulty: Hard
# Metadata Topics: depth-first-search,graph,eulerian-circuit
# Metadata Coverage: 100

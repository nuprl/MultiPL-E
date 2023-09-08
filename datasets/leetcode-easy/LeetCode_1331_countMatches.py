from typing import List


def countMatches(items: List[List[str]], ruleKey: str, ruleValue: str) -> int:
    """
    You are given an array items, where each items[i] = [typei, colori, namei] describes the type, color, and name of the ith item. You are also given a rule represented by two strings, ruleKey and ruleValue.
    The ith item is said to match the rule if one of the following is true:

    ruleKey == "type" and ruleValue == typei.
    ruleKey == "color" and ruleValue == colori.
    ruleKey == "name" and ruleValue == namei.

    Return the number of items that match the given rule.
 
    Example 1:

    Input: items = [["phone","blue","pixel"],["computer","silver","lenovo"],["phone","gold","iphone"]], ruleKey = "color", ruleValue = "silver"
    Output: 1
    Explanation: There is only one item matching the given rule, which is ["computer","silver","lenovo"].

    Example 2:

    Input: items = [["phone","blue","pixel"],["computer","silver","phone"],["phone","gold","iphone"]], ruleKey = "type", ruleValue = "phone"
    Output: 2
    Explanation: There are only two items matching the given rule, which are ["phone","blue","pixel"] and ["phone","gold","iphone"]. Note that the item ["computer","silver","phone"] does not match.
 
    Constraints:

    1 <= items.length <= 104
    1 <= typei.length, colori.length, namei.length, ruleValue.length <= 10
    ruleKey is equal to either "type", "color", or "name".
    All strings consist only of lowercase letters.

    """
    ### Canonical solution below ###
    count = 0
    index = {"type": 0, "color": 1, "name": 2}[ruleKey]
    for item in items:
        if item[index] == ruleValue:
            count += 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["computer", "gold", "dell"]], "name", "dell") == 1
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["phone", "gold", "iphone"]], "name", "lenovo") == 1
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["computer", "gold", "dell"]], "color", "gold") == 1
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["computer", "silver", "dell"]], "color", "silver") == 2
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["computer", "gold", "dell"]], "color", "blue") == 1
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "phone"], ["phone", "gold", "iphone"]], "type", "phone") == 2
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "phone"], ["computer", "gold", "dell"]], "name", "lenovo") == 0
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["phone", "gold", "iphone"]], "color", "silver") == 1
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["computer", "gold", "dell"]], "color", "silver") == 1
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["phone", "gold", "iphone"]], "color", "gold") == 1
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "phone"], ["computer", "gold", "dell"]], "name", "pixel") == 1
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "phone"], ["phone", "gold", "iphone"]], "name", "phone") == 1
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["computer", "gold", "dell"]], "name", "pixel") == 1
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["phone", "gold", "iphone"]], "name", "pixel") == 1
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["phone", "gold", "iphone"]], "name", "iphone") == 1
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["computer", "gold", "dell"]], "color", "lenovo") == 0
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["phone", "gold", "iphone"]], "color", "blue") == 1
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["phone", "gold", "iphone"]], "type", "computer") == 1
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["phone", "gold", "iphone"]], "type", "phone") == 2
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["computer", "gold", "dell"]], "type", "computer") == 2
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "phone"], ["computer", "gold", "dell"]], "name", "computer") == 0
	assert candidate([["phone", "blue", "pixel"], ["computer", "silver", "lenovo"], ["computer", "gold", "dell"]], "name", "lenovo") == 1
def test_check():
	check(countMatches)
# Metadata Difficulty: Easy
# Metadata Topics: array,string
# Metadata Coverage: 100

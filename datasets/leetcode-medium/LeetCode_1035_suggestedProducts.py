from typing import List, Union


def suggestedProducts(products: List[str], searchWord: str) -> List[Union]:
    """
    You are given an array of strings products and a string searchWord.
    Design a system that suggests at most three product names from products after each character of searchWord is typed. Suggested products should have common prefix with searchWord. If there are more than three products with a common prefix return the three lexicographically minimums products.
    Return a list of lists of the suggested products after each character of searchWord is typed.
 
    Example 1:

    Input: products = ["mobile","mouse","moneypot","monitor","mousepad"], searchWord = "mouse"
    Output: [["mobile","moneypot","monitor"],["mobile","moneypot","monitor"],["mouse","mousepad"],["mouse","mousepad"],["mouse","mousepad"]]
    Explanation: products sorted lexicographically = ["mobile","moneypot","monitor","mouse","mousepad"].
    After typing m and mo all products match and we show user ["mobile","moneypot","monitor"].
    After typing mou, mous and mouse the system suggests ["mouse","mousepad"].

    Example 2:

    Input: products = ["havana"], searchWord = "havana"
    Output: [["havana"],["havana"],["havana"],["havana"],["havana"],["havana"]]
    Explanation: The only word "havana" will be always suggested while typing the search word.

 
    Constraints:

    1 <= products.length <= 1000
    1 <= products[i].length <= 3000
    1 <= sum(products[i].length) <= 2 * 104
    All the strings of products are unique.
    products[i] consists of lowercase English letters.
    1 <= searchWord.length <= 1000
    searchWord consists of lowercase English letters.

    """
    ### Canonical solution below ###
    from bisect import bisect_left
    products.sort()
    result = []
    current_prefix = ""

    for letter in searchWord:
        current_prefix += letter
        index = bisect_left(products, current_prefix)
        suggestions = []

        for i in range(3):
            if index < len(products) and products[index].startswith(current_prefix):
                suggestions.append(products[index])
                index += 1
            else:
                break

        result.append(suggestions)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate(["havana"], "havana") == [['havana'], ['havana'], ['havana'], ['havana'], ['havana'], ['havana']]
	assert candidate(["apple","boy","card","egmont"], "dog") == [[], [], []]
	assert candidate(["bags","baggage","banner","box","cloths"], "bags") == [['baggage', 'bags', 'banner'], ['baggage', 'bags', 'banner'], ['baggage', 'bags'], ['bags']]
	assert candidate(["apple","apple","apple","banana"], "apple") == [['apple', 'apple', 'apple'], ['apple', 'apple', 'apple'], ['apple', 'apple', 'apple'], ['apple', 'apple', 'apple'], ['apple', 'apple', 'apple']]
	assert candidate(["mobile","mouse","moneypot","monitor","mousepad"], "mouse") == [['mobile', 'moneypot', 'monitor'], ['mobile', 'moneypot', 'monitor'], ['mouse', 'mousepad'], ['mouse', 'mousepad'], ['mouse', 'mousepad']]
	assert candidate(["apple","boy","card","dog","egmont"], "boy") == [['boy'], ['boy'], ['boy']]
	assert candidate(["eggs"], "egg") == [['eggs'], ['eggs'], ['eggs']]
	assert candidate(["havana"], "tatiana") == [[], [], [], [], [], [], []]
def test_check():
	check(suggestedProducts)
# Metadata Difficulty: Medium
# Metadata Topics: array,string,binary-search,trie,sorting,heap-priority-queue
# Metadata Coverage: 100

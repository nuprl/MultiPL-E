from typing import List


def uncommon_from_sentences(s1: str, s2: str) -> List[str]:
    """
    A sentence is a string of single-space separated words where each word consists only of lowercase letters.
    A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.
    Given two sentences s1 and s2, return a list of all the uncommon words. You may return the answer in any order.
 
    Example 1:
    Input: s1 = "this apple is sweet", s2 = "this apple is sour"
    Output: ["sweet","sour"]
    Example 2:
    Input: s1 = "apple apple", s2 = "banana"
    Output: ["banana"]

 
    Constraints:

    1 <= s1.length, s2.length <= 200
    s1 and s2 consist of lowercase English letters and spaces.
    s1 and s2 do not have leading or trailing spaces.
    All the words in s1 and s2 are separated by a single space.

    """
    ### Canonical solution below ###
    word_count = {}
    for word in (s1 + " " + s2).split():
        word_count[word] = word_count.get(word, 0) + 1

    return [key for key, val in word_count.items() if val == 1]




### Unit tests below ###
def check(candidate):
	assert candidate("this apple is sweet", "this apple is sour") == ['sweet', 'sour']
	assert candidate("blue red green", "green red blue") == []
	assert candidate(
    "snow rain clouds", "rain clouds sunshine") == ['snow', 'sunshine']
	assert candidate("two three", "four five") == ["two", "three", "four", "five"]
	assert candidate("I am a student but I study hard", "I am a student and I study hard") == ['but', 'and']
	assert candidate("apple orange", "orange banana") == ['apple', 'banana']
	assert candidate("wine beer whiskey", "beer whiskey coke") == ['wine', 'coke']
	assert candidate("January February March", "February March April") == ['January', 'April']
	assert candidate("dogs cats birds", "cats birds fish") == ['dogs', 'fish']
	assert candidate(
    "ice water vodka juice",
    "juice water vodka martini") == ['ice', 'martini']
	assert candidate("May June July", "June July August") == ['May', 'August']
	assert candidate(
    "ice cream lemonade strawberry", "ice cream strawberry milk") == ['lemonade', 'milk']
	assert candidate("day night day", "day night day") == []
	assert candidate("orange", "orange orange") == []
	assert candidate("hello world", "world goodbye") == ['hello', 'goodbye']
	assert candidate("breakfast lunch dinner", "lunch dinner dessert") == ['breakfast', 'dessert']
	assert candidate("Saturday Sunday Monday", "Sunday Monday Friday") == ['Saturday', 'Friday']
	assert candidate("spring summer fall", "summer fall winter") == ['spring', 'winter']
	assert candidate("apple", "apple") == []
	assert candidate("lion tiger bear", "tiger bear elephant") == ['lion', 'elephant']
	assert candidate("red blue green", "blue yellow purple") == ['red', 'green', 'yellow', 'purple']
	assert candidate("cat dog cow pig", "dog cow pig sheep") == ['cat', 'sheep']
	assert candidate("a a a b b", "a b c d e") == ["c", "d", "e"]
	assert candidate("b b b c", "b b b c") == []
	assert candidate("b b b", "a b c b") == ['a', 'c']
	assert candidate("apple apple", "banana") == ['banana']
	assert candidate("black white pink", "white pink purple") == ['black', 'purple']
	assert candidate("apple apple", "banana") == ["banana"]
	assert candidate("a b c d e f", "a b c d e f") == []
	assert candidate("", "") == []
	assert candidate("one two three", "two three four") == ['one', 'four']
	assert candidate("circle square triangle", "square triangle rectangle") == ['circle', 'rectangle']
	assert candidate("", "one") == ["one"]
	assert candidate("a b c d", "") == ["a", "b", "c", "d"]
	assert candidate("apple banana", "banana orange") == ['apple', 'orange']
	assert candidate("car bus train", "bus train plane") == ['car', 'plane']
	assert candidate("I like Python", "I like Java") == ['Python', 'Java']
	assert candidate("one", "") == ["one"]
	assert candidate("one", "one") == []
	assert candidate("peach pear plum", "plum pear peach") == []
	assert candidate(
    "apple orange banana", "apple orange banana") == []
	assert candidate("dog cat pig", "cat dog rat") == ['pig', 'rat']
	assert candidate("a b c d e f", "a b c d f") == ["e"]
	assert candidate("two three", "two three") == []
	assert candidate("a a a a a a", "a a a a a a") == []
	assert candidate("two three", "three four") == ["two", "four"]
	assert candidate("cat dog cow pig", "pig cow dog goat") == ['cat', 'goat']
	assert candidate("william john james", "john william james") == []
	assert candidate("March April May", "April May June") == ['March', 'June']
	assert candidate("pencil paper book", "paper book ruler") == ['pencil', 'ruler']
	assert candidate("four five", "four five six seven") == ["six", "seven"]
	assert candidate(
    "Same sentence same sentence same sentence",
    "Same sentence same sentence same sentence"
) == []
	assert candidate("pencil marker eraser", "marker eraser pencil") == []
	assert candidate("two three", "") == ["two", "three"]
	assert candidate("dog cat cow pig", "cat pig dog rat") == ['cow', 'rat']
	assert candidate("January February", "February March") == ['January', 'March']
	assert candidate("gold silver bronze", "silver bronze platinum") == ['gold', 'platinum']
	assert candidate("sun moon stars", "moon stars planets") == ['sun', 'planets']
	assert candidate("this apple is sweet", "this apple is sour") == ["sweet", "sour"]
	assert candidate("four five", "four five six") == ["six"]
	assert candidate("morning afternoon evening", "afternoon evening night") == ['morning', 'night']
	assert candidate("pizza burger fries", "burger fries soda") == ['pizza', 'soda']
	assert candidate("Monday Tuesday", "Tuesday Wednesday") == ['Monday', 'Wednesday']
	assert candidate("snow rain clouds", "clouds rain rainfall") == ['snow', 'rainfall']
	assert candidate("red green blue", "green blue yellow") == ['red', 'yellow']
	assert candidate("coffee tea juice", "tea juice water") == ['coffee', 'water']
def test_check():
	check(uncommon_from_sentences)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string
# Metadata Coverage: 100

# Write a function that accepts two lists of strings and returns the list that has 
# total number of chars in the all strings of the list less than the other list.
# if the two lists have the same number of chars, return the first list.
# Examples
# total_match([], []) ➞ []
# total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
# total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
# total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
# total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
def total_match(lst1, lst2)
	lst1.select {|x| x.length < lst2.map {|y| y.length}.inject(:+)}.sort
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_total_match
    candidate = method(:total_match)
    assert_equal([], candidate.call([], []))
    assert_equal(['hi', 'hi'], candidate.call(['hi', 'admin'], ['hi', 'hi']))
    assert_equal(['hi', 'admin'], candidate.call(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']))
    assert_equal(['4'], candidate.call(['4'], ['1', '2', '3', '4', '5']))
    assert_equal(['hI', 'Hi'], candidate.call(['hi', 'admin'], ['hI', 'Hi']))
    assert_equal(['hI', 'hi', 'hi'], candidate.call(['hi', 'admin'], ['hI', 'hi', 'hi']))
    assert_equal(['hi', 'admin'], candidate.call(['hi', 'admin'], ['hI', 'hi', 'hii']))
    assert_equal([], candidate.call([], ['this']))
    assert_equal([], candidate.call(['this'], []))
  end
end

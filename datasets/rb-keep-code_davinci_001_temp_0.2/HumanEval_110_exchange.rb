# In this problem, you will implement a function that takes two lists of numbers,
# and determines whether it is possible to perform an exchange of elements
# between them to make lst1 a list of only even numbers.
# There is no limit on the number of exchanged elements between lst1 and lst2.
# If it is possible to exchange elements between the lst1 and lst2 to make
# all the elements of lst1 to be even, return "YES".
# Otherwise, return "NO".
# For example:
# exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
# exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
# It is assumed that the input lists will be non-empty.
def exchange(lst1, lst2)
  # your code here
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_exchange
    candidate = method(:exchange)
    assert_equal("YES", candidate.call([1, 2, 3, 4], [1, 2, 3, 4]))
    assert_equal("NO", candidate.call([1, 2, 3, 4], [1, 5, 3, 4]))
    assert_equal("YES", candidate.call([1, 2, 3, 4], [2, 1, 4, 3]))
    assert_equal("YES", candidate.call([5, 7, 3], [2, 6, 4]))
    assert_equal("NO", candidate.call([5, 7, 3], [2, 6, 3]))
    assert_equal("NO", candidate.call([3, 2, 6, 1, 8, 9], [3, 5, 5, 1, 1, 1]))
    assert_equal("YES", candidate.call([100, 200], [200, 200]))
  end
end

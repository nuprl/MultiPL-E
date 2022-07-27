# Create a function that returns a tuple (a, b), where 'a' is
# the largest of negative integers, and 'b' is the smallest
# of positive integers in a list.
# If there is no negative or positive integers, return them as None.
# Examples:
# largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
# largest_smallest_integers([]) == (None, None)
# largest_smallest_integers([0]) == (None, None)
def largest_smallest_integers(lst)
    if lst == [] or lst == [0]:
        return (None, None)
    else:
        lst.sort()
        if lst[0] < 0:
            return (None, lst[0])
        elif lst[-1] > 0:
            return (lst[-1], None)
        else:
            return (lst[-1], lst[0])

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_largest_smallest_integers
    candidate = method(:largest_smallest_integers)
    assert_equal([nil, 1], candidate.call([2, 4, 1, 3, 5, 7]))
    assert_equal([nil, 1], candidate.call([2, 4, 1, 3, 5, 7, 0]))
    assert_equal([-2, 1], candidate.call([1, 3, 2, 4, 5, 6, -2]))
    assert_equal([-7, 2], candidate.call([4, 5, 3, 6, 2, 7, -7]))
    assert_equal([-9, 2], candidate.call([7, 3, 8, 4, 9, 2, 5, -9]))
    assert_equal([nil, nil], candidate.call([]))
    assert_equal([nil, nil], candidate.call([0]))
    assert_equal([-1, nil], candidate.call([-1, -3, -5, -6]))
    assert_equal([-1, nil], candidate.call([-1, -3, -5, -6, 0]))
    assert_equal([-3, 1], candidate.call([-6, -4, -4, -3, 1]))
    assert_equal([-3, 1], candidate.call([-6, -4, -4, -3, -100, 1]))
  end
end

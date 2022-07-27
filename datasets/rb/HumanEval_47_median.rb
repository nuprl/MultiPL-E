# Return median of elements in the list l.
# >>> median([3, 1, 2, 4, 5])
# 3
# >>> median([-10, 4, 6, 1000, 10, 20])
# 15.0
def median(l)
    l = l.sort
    if l.length % 2 == 0
        return (l[l.length/2] + l[l.length/2 - 1])/2.0
    else
        return l[l.length/2]
    end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_median
    candidate = method(:median)
    assert_equal(3, candidate.call([3, 1, 2, 4, 5]))
    assert_equal(8.0, candidate.call([-10, 4, 6, 1000, 10, 20]))
    assert_equal(5, candidate.call([5]))
    assert_equal(5.5, candidate.call([6, 5]))
    assert_equal(7, candidate.call([8, 1, 3, 9, 9, 2, 7]))
  end
end

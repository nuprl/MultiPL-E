# Return True if all numbers in the list l are below threshold t.
# >>> below_threshold([1, 2, 4, 10], 100)
# True
# >>> below_threshold([1, 20, 4, 10], 5)
# False
def below_threshold(l, t)
    for i in l
        if i >= t
            return false
        end
    end
    return true
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_below_threshold
    candidate = method(:below_threshold)
    assert_equal(true, candidate.call([1, 2, 4, 10], 100))
    assert_equal(false, candidate.call([1, 20, 4, 10], 5))
    assert_equal(true, candidate.call([1, 20, 4, 10], 21))
    assert_equal(true, candidate.call([1, 20, 4, 10], 22))
    assert_equal(true, candidate.call([1, 8, 4, 10], 11))
    assert_equal(false, candidate.call([1, 8, 4, 10], 10))
  end
end

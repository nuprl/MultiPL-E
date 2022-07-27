# Create a function that takes 3 numbers.
# Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
# Returns false in any other cases.
# Examples
# any_int(5, 2, 7) ➞ True
# any_int(3, 2, 2) ➞ False
# any_int(3, -2, 1) ➞ True
# any_int(3.6, -2.2, 2) ➞ False
def any_int(x, y, z)
	if x.is_a?(Integer) && y.is_a?(Integer) && z.is_a?(Integer)
		if (x + y == z) || (x + z == y) || (y + z == x)
			return true
		else
			return false
		end
	else
		return false
	end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_any_int
    candidate = method(:any_int)
    assert_equal(true, candidate.call(2, 3, 1))
    assert_equal(false, candidate.call(2.5, 2, 3))
    assert_equal(false, candidate.call(1.5, 5, 3.5))
    assert_equal(false, candidate.call(2, 6, 2))
    assert_equal(true, candidate.call(4, 2, 2))
    assert_equal(false, candidate.call(2.2, 2.2, 2.2))
    assert_equal(true, candidate.call(-4, 6, 2))
    assert_equal(true, candidate.call(2, 1, 1))
    assert_equal(true, candidate.call(3, 4, 7))
    assert_equal(false, candidate.call(3.0, 4, 7))
  end
end

# Create a function that takes integers, floats, or strings representing
# real numbers, and returns the larger variable in its given variable type.
# Return None if the values are equal.
# Note: If a real number is represented as a string, the floating point might be . or ,
# compare_one(1, 2.5) ➞ 2.5
# compare_one(1, "2,3") ➞ "2,3"
# compare_one("5,1", "6") ➞ "6"
# compare_one("1", 1) ➞ None
def compare_one(a, b)
	if a.is_a?(Integer) && b.is_a?(Integer)
		return a > b ? a : b
	elsif a.is_a?(Integer) && b.is_a?(Float)
		return a > b ? a : b
	elsif a.is_a?(Float) && b.is_a?(Integer)
		return a > b ? a : b
	elsif a.is_a?(Float) && b.is_a?(Float)
		return a > b ? a : b
	elsif a.is_a?(String) && b.is_a?(String)
		a = a.delete(',.').to_f
		b = b.delete(',.').to_f
		return a > b ? a : b
	else
		return nil
	end
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_compare_one
    candidate = method(:compare_one)
    assert_equal(2, candidate.call(1, 2))
    assert_equal(2.5, candidate.call(1, 2.5))
    assert_equal(3, candidate.call(2, 3))
    assert_equal(6, candidate.call(5, 6))
    assert_equal("2,3", candidate.call(1, "2,3"))
    assert_equal("6", candidate.call("5,1", "6"))
    assert_equal("2", candidate.call("1", "2"))
    assert_equal(nil, candidate.call("1", 1))
  end
end

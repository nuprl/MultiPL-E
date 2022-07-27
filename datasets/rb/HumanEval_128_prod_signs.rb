# You are given an array arr of integers and you need to return
# sum of magnitudes of integers multiplied by product of all signs
# of each number in the array, represented by 1, -1 or 0.
# Note: return None for empty arr.
# Example:
# >>> prod_signs([1, 2, 2, -4]) == -9
# >>> prod_signs([0, 1]) == 0
# >>> prod_signs([]) == None
def prod_signs(arr)
  return nil if arr.empty?
  arr.map { |n| n.abs }.reduce(:*) * arr.reduce(:+)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_prod_signs
    candidate = method(:prod_signs)
    assert_equal(-9, candidate.call([1, 2, 2, -4]))
    assert_equal(0, candidate.call([0, 1]))
    assert_equal(-10, candidate.call([1, 1, 1, 2, 3, -1, 1]))
    assert_equal(nil, candidate.call([]))
    assert_equal(20, candidate.call([2, 4, 1, 2, -1, -1, 9]))
    assert_equal(4, candidate.call([-1, 1, -1, 1]))
    assert_equal(-4, candidate.call([-1, 1, 1, 1]))
    assert_equal(0, candidate.call([-1, 1, 1, 0]))
  end
end

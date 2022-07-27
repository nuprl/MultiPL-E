# Write a function that returns True if the object q will fly, and False otherwise.
# The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
# Example:
# will_it_fly([1, 2], 5) ➞ False 
# # 1+2 is less than the maximum possible weight, but it's unbalanced.
# will_it_fly([3, 2, 3], 1) ➞ False
# # it's balanced, but 3+2+3 is more than the maximum possible weight.
# will_it_fly([3, 2, 3], 9) ➞ True
# # 3+2+3 is less than the maximum possible weight, and it's balanced.
# will_it_fly([3], 5) ➞ True
# # 3 is less than the maximum possible weight, and it's balanced.
def will_it_fly(q, w)
  q.join.to_i.to_s == q.join.to_s && q.inject(:+) <= w
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_will_it_fly
    candidate = method(:will_it_fly)
    assert_equal(true, candidate.call([3, 2, 3], 9))
    assert_equal(false, candidate.call([1, 2], 5))
    assert_equal(true, candidate.call([3], 5))
    assert_equal(false, candidate.call([3, 2, 3], 1))
    assert_equal(false, candidate.call([1, 2, 3], 6))
    assert_equal(true, candidate.call([5], 5))
  end
end

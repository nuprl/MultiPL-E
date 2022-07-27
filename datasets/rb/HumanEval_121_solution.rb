# Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
# Examples
# solution([5, 8, 7, 1]) ==> 12
# solution([3, 3, 3, 3, 3]) ==> 9
# solution([30, 13, 24, 321]) ==>0
def solution(lst)
  lst.select.with_index { |_, i| i.even? }.sum(&:odd?)
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_solution
    candidate = method(:solution)
    assert_equal(12, candidate.call([5, 8, 7, 1]))
    assert_equal(9, candidate.call([3, 3, 3, 3, 3]))
    assert_equal(0, candidate.call([30, 13, 24, 321]))
    assert_equal(5, candidate.call([5, 9]))
    assert_equal(0, candidate.call([2, 4, 8]))
    assert_equal(23, candidate.call([30, 13, 23, 32]))
    assert_equal(3, candidate.call([3, 13, 2, 9]))
  end
end

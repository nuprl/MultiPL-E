=begin
 Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
 Examples
 solution([5, 8, 7, 1]) ==> 12
 solution([3, 3, 3, 3, 3]) ==> 9
 solution([30, 13, 24, 321]) ==>0
=end
def solution(lst)
  lst.select.with_index { |_, idx| idx.even? }.sum
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_solution
     assert_equal(solution([5, 8, 7, 1]), 12)
     assert_equal(solution([3, 3, 3, 3, 3]), 9)
     assert_equal(solution([30, 13, 24, 321]), 0)
     assert_equal(solution([5, 9]), 5)
     assert_equal(solution([2, 4, 8]), 0)
     assert_equal(solution([30, 13, 23, 32]), 23)
     assert_equal(solution([3, 13, 2, 9]), 3)
  end
end

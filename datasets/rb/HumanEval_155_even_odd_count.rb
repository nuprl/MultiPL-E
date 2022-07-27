# Given an integer. return a tuple that has the number of even and odd digits respectively.
# Example:
# even_odd_count(-12) ==> (1, 1)
# even_odd_count(123) ==> (1, 2)
def even_odd_count(num)
  even = 0
  odd = 0
  num.to_s.each_char do |char|
    if char.to_i.even?
      even += 1
    else
      odd += 1
    end
  end
  [even, odd]
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_even_odd_count
    candidate = method(:even_odd_count)
    assert_equal([0, 1], candidate.call(7))
    assert_equal([1, 1], candidate.call(-78))
    assert_equal([2, 2], candidate.call(3452))
    assert_equal([3, 3], candidate.call(346211))
    assert_equal([3, 3], candidate.call(-345821))
    assert_equal([1, 0], candidate.call(-2))
    assert_equal([2, 3], candidate.call(-45347))
    assert_equal([1, 0], candidate.call(0))
  end
end

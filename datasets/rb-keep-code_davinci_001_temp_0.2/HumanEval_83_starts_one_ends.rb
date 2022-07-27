# Given a positive integer n, return the count of the numbers of n-digit
# positive integers that start or end with 1.
def starts_one_ends(n)
  count = 0
  (1..9).each do |i|
    count += 1 if i.to_s.start_with?('1')
    count += 1 if i.to_s.end_with?('1')
  end
  count
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_starts_one_ends
    candidate = method(:starts_one_ends)
    assert_equal(1, candidate.call(1))
    assert_equal(18, candidate.call(2))
    assert_equal(180, candidate.call(3))
    assert_equal(1800, candidate.call(4))
    assert_equal(18000, candidate.call(5))
  end
end

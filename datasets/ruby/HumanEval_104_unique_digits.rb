=begin
 Given a list of positive integers x. return a sorted list of all 
 elements that hasn't any even digit.
 Note: Returned list should be sorted in increasing order.
 For example:
 >>> unique_digits([15, 33, 1422, 1])
 [1, 15, 33]
 >>> unique_digits([152, 323, 1422, 10])
 []
=end
def unique_digits(x)
  x.select { |n| n.to_s.chars.select { |c| c.to_i.even? }.empty? }.sort
end
# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_unique_digits
     assert_equal(unique_digits([15, 33, 1422, 1]), [1, 15, 33])
     assert_equal(unique_digits([152, 323, 1422, 10]), [])
     assert_equal(unique_digits([12345, 2033, 111, 151]), [111, 151])
     assert_equal(unique_digits([135, 103, 31]), [31, 135])
  end
end

# You are given a list of integers.
# You need to find the largest prime value and return the sum of its digits.
# Examples:
# For lst = [0,3,2,1,3,5,7,4,5,5,5,2,181,32,4,32,3,2,32,324,4,3] the output should be 10
# For lst = [1,0,1,8,2,4597,2,1,3,40,1,2,1,2,4,2,5,1] the output should be 25
# For lst = [1,3,1,32,5107,34,83278,109,163,23,2323,32,30,1,9,3] the output should be 13
# For lst = [0,724,32,71,99,32,6,0,5,91,83,0,5,6] the output should be 11
# For lst = [0,81,12,3,1,21] the output should be 3
# For lst = [0,8,1,2,1,7] the output should be 7
def skjkasdkd(lst)
  lst.map! { |x| x.to_s.split('').map(&:to_i) }
  lst.flatten!
  lst.sort!
  lst.reverse!
  lst.delete_if { |x| x == 0 }
  lst.join.to_i
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_skjkasdkd
    candidate = method(:skjkasdkd)
    assert_equal(10, candidate.call([0, 3, 2, 1, 3, 5, 7, 4, 5, 5, 5, 2, 181, 32, 4, 32, 3, 2, 32, 324, 4, 3]))
    assert_equal(25, candidate.call([1, 0, 1, 8, 2, 4597, 2, 1, 3, 40, 1, 2, 1, 2, 4, 2, 5, 1]))
    assert_equal(13, candidate.call([1, 3, 1, 32, 5107, 34, 83278, 109, 163, 23, 2323, 32, 30, 1, 9, 3]))
    assert_equal(11, candidate.call([0, 724, 32, 71, 99, 32, 6, 0, 5, 91, 83, 0, 5, 6]))
    assert_equal(3, candidate.call([0, 81, 12, 3, 1, 21]))
    assert_equal(7, candidate.call([0, 8, 1, 2, 1, 7]))
    assert_equal(19, candidate.call([8191]))
    assert_equal(19, candidate.call([8191, 123456, 127, 7]))
    assert_equal(10, candidate.call([127, 97, 8192]))
  end
end

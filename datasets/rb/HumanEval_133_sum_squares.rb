# You are given a list of numbers.
# You need to return the sum of squared numbers in the given list,
# round each element in the list to the upper int(Ceiling) first.
# Examples:
# For lst = [1,2,3] the output should be 14
# For lst = [1,4,9] the output should be 98
# For lst = [1,3,5,7] the output should be 84
# For lst = [1.4,4.2,0] the output should be 29
# For lst = [-2.4,1,1] the output should be 6
def sum_squares(lst)
    sum = 0
    for i in lst
        sum += i**2
    end
    return sum
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_sum_squares
    candidate = method(:sum_squares)
    assert_equal(14, candidate.call([1, 2, 3]))
    assert_equal(14, candidate.call([1.0, 2, 3]))
    assert_equal(84, candidate.call([1, 3, 5, 7]))
    assert_equal(29, candidate.call([1.4, 4.2, 0]))
    assert_equal(6, candidate.call([-2.4, 1, 1]))
    assert_equal(10230, candidate.call([100, 1, 15, 2]))
    assert_equal(200000000, candidate.call([10000, 10000]))
    assert_equal(75, candidate.call([-1.4, 4.6, 6.3]))
    assert_equal(1086, candidate.call([-1.4, 17.9, 18.9, 19.9]))
    assert_equal(0, candidate.call([0]))
    assert_equal(1, candidate.call([-1]))
    assert_equal(2, candidate.call([-1, 1, 0]))
  end
end

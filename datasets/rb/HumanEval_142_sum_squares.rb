# "
# This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a 
# multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
# change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
# Examples:
# For lst = [1,2,3] the output should be 6
# For lst = []  the output should be 0
# For lst = [-1,-5,2,-1,-5]  the output should be -126
def sum_squares(lst)
    sum = 0
    for i in range(len(lst)):
        if i % 3 == 0:
            sum += lst[i]**2
        elif i % 4 == 0 and i % 3 != 0:
            sum += lst[i]**3
    return sum

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_sum_squares
    candidate = method(:sum_squares)
    assert_equal(6, candidate.call([1, 2, 3]))
    assert_equal(14, candidate.call([1, 4, 9]))
    assert_equal(0, candidate.call([]))
    assert_equal(9, candidate.call([1, 1, 1, 1, 1, 1, 1, 1, 1]))
    assert_equal(-3, candidate.call([-1, -1, -1, -1, -1, -1, -1, -1, -1]))
    assert_equal(0, candidate.call([0]))
    assert_equal(-126, candidate.call([-1, -5, 2, -1, -5]))
    assert_equal(3030, candidate.call([-56, -99, 1, 0, -2]))
    assert_equal(0, candidate.call([-1, 0, 0, 0, 0, 0, 0, 0, -1]))
    assert_equal(-14196, candidate.call([-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37]))
    assert_equal(-1448, candidate.call([-1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10]))
  end
end

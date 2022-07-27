# Given an array arr of integers, find the minimum number of elements that
# need to be changed to make the array palindromic. A palindromic array is an array that
# is read the same backwards and forwards. In one change, you can change one element to any other element.
# For example:
# smallest_change([1,2,3,5,4,7,9,6]) == 4
# smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
# smallest_change([1, 2, 3, 2, 1]) == 0
def smallest_change(arr)
  arr.sort!
  i = 0
  j = arr.length - 1
  count = 0
  while i < j
    if arr[i] == arr[j]
      i += 1
      j -= 1
    elsif arr[i] < arr[j]
      i += 1
    else
      j -= 1
    end
    count += 1
  end
  count
end

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_smallest_change
    candidate = method(:smallest_change)
    assert_equal(4, candidate.call([1, 2, 3, 5, 4, 7, 9, 6]))
    assert_equal(1, candidate.call([1, 2, 3, 4, 3, 2, 2]))
    assert_equal(1, candidate.call([1, 4, 2]))
    assert_equal(1, candidate.call([1, 4, 4, 2]))
    assert_equal(0, candidate.call([1, 2, 3, 2, 1]))
    assert_equal(0, candidate.call([3, 1, 1, 3]))
    assert_equal(0, candidate.call([1]))
    assert_equal(1, candidate.call([0, 1]))
  end
end

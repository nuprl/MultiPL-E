=begin
 We have an array 'arr' of N integers arr[1], arr[2], ..., arr[N].The
 numbers in the array will be randomly ordered. Your task is to determine if
 it is possible to get an array sorted in non-decreasing order by performing 
 the following operation on the given array:
 You are allowed to perform right shift operation any number of times.
 One right shift operation means shifting all elements of the array by one
 position in the right direction. The last element of the array will be moved to
 the starting position in the array i.e. 0th index. 
 If it is possible to obtain the sorted array by performing the above operation
 then return True else return False.
 If the given array is empty then return True.
 Note: The given list is guaranteed to have unique elements.
 For Example:
 move_one_ball([3, 4, 5, 1, 2])==>True
 Explanation: By performin 2 right shift operations, non-decreasing order can
 be achieved for the given array.
 move_one_ball([3, 5, 4, 1, 2])==>False
 Explanation:It is not possible to get non-decreasing order for the given
 array by performing any number of right shift operations.
=end
def move_one_ball(arr)
  return true if arr.empty?
  return false if arr.size == 1
  return false if arr.size == 2 && arr[0] > arr[1]
  return true if arr.size == 2 && arr[0] < arr[1]
  return false if arr.size == 3 && arr[0] > arr[1] && arr[1] > arr[2]
  return false if arr.size == 3 && arr[0] < arr[1] && arr[1] < arr[2]
  return false if arr.size == 3 && arr[0] > arr[1] && arr[1] < arr[2]
  return false if arr.size == 3 && arr[0] < arr[1] && arr[1] > arr[2]
  return false if arr.size == 4 && arr[0] > arr[1] && arr[1] > arr[2] && arr[2] > arr[3]
  return false if arr.size == 4 && arr[0] < arr[1] && arr[1] < arr[2] && arr[2] < arr[3]
  return false if arr.size == 4 && arr[0] > arr[1] && arr[1] < arr[2] && arr[2] > arr[3]
  return false if arr.size == 4 && arr[0] < arr[1] && arr[1] > arr[2] && arr[2] < arr[3]
  return false if arr.size == 4 && arr[0] > arr[1] && arr[1] > arr[2] && arr[2] < arr[3]
  return false if arr.size == 4 && arr[0] < arr[1] && arr[1] < arr[2] && arr[2] > arr[3]
  return false if arr.size == 4 && arr[0] > arr[1] && arr[1] < arr[2] && arr[2] > arr[3]
  return false if arr.size == 4 && arr[0] < arr[1] && arr[1] > arr[2] && arr[2] < arr[3]

# Unit tests below

require 'test/unit'
class TestHumanEval < Test::Unit::TestCase
  def test_move_one_ball
     assert_equal(move_one_ball([3, 4, 5, 1, 2]), true)
     assert_equal(move_one_ball([3, 5, 10, 1, 2]), true)
     assert_equal(move_one_ball([4, 3, 1, 2]), false)
     assert_equal(move_one_ball([3, 5, 4, 1, 2]), false)
     assert_equal(move_one_ball([]), true)
  end
end

import scala.math._
import scala.collection.mutable._
object Problem {
    // We have an array 'arr' of N integers arr[1], arr[2], ..., arr[N].The
    // numbers in the array will be randomly ordered. Your task is to determine if
    // it is possible to get an array sorted in non-decreasing order by performing 
    // the following operation on the given array:
    // You are allowed to perform right shift operation any number of times.
    // One right shift operation means shifting all elements of the array by one
    // position in the right direction. The last element of the array will be moved to
    // the starting position in the array i.e. 0th index. 
    // If it is possible to obtain the sorted array by performing the above operation
    // then return True else return False.
    // If the given array is empty then return True.
    // Note: The given list is guaranteed to have unique elements.
    // For Example:
    // move_one_ball([3, 4, 5, 1, 2])==>True
    // Explanation: By performin 2 right shift operations, non-decreasing order can
    // be achieved for the given array.
    // move_one_ball([3, 5, 4, 1, 2])==>False
    // Explanation:It is not possible to get non-decreasing order for the given
    // array by performing any number of right shift operations.
    def moveOneBall(arr : List[Int]) : Boolean = {
        if(arr.isEmpty) return true
        var i = 0
        var j = arr.length - 1
        while(i < j){
            if(arr(i) > arr(j)){
                var temp = arr(i)
                arr(i) = arr(j)
                arr(j) = temp
                i += 1
                j -= 1
            }else{
                j -= 1
            }
        }
        return true

    }
    def main(args: Array[String]) = {
    assert(moveOneBall((List[Int](3.toInt, 4.toInt, 5.toInt, 1.toInt, 2.toInt))) == (true));
    assert(moveOneBall((List[Int](3.toInt, 5.toInt, 10.toInt, 1.toInt, 2.toInt))) == (true));
    assert(moveOneBall((List[Int](4.toInt, 3.toInt, 1.toInt, 2.toInt))) == (false));
    assert(moveOneBall((List[Int](3.toInt, 5.toInt, 4.toInt, 1.toInt, 2.toInt))) == (false));
    assert(moveOneBall((List[Int]())) == (true));
    }

}

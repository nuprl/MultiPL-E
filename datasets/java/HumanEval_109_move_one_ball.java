import java.util.*;
import java.lang.reflect.*;
import org.javatuples.*;
class Problem {
private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}    // We have an array 'arr' of N integers arr[1], arr[2], ..., arr[N].The
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
    public static boolean move_one_ball(ArrayList<Long> arr) {
        // Write your code here
        if(arr.size()==0)
            return true;
        int i=0;
        while(i<arr.size()-1)
        {
            if(arr.get(i)>arr.get(i+1))
            {
                arr.remove(i);
                arr.add(0,arr.get(i));
                i=0;
            }
            else
                i++;
        }
        return true;
    }
    public static void main(String[] args) {
        ArrayList<Long> arr = new ArrayList<Long>();
        arr.add(3);
        arr.add(4);
        arr.add(5);
        arr.add(1);
        arr.add(2);
        System.out.println(move_one_ball(arr));
    }
}

    }
    public static void main(String[] args) {
    assert(move_one_ball((new ArrayList<Long>(Arrays.asList((long)3l, (long)4l, (long)5l, (long)1l, (long)2l)))) == (true));
    assert(move_one_ball((new ArrayList<Long>(Arrays.asList((long)3l, (long)5l, (long)10l, (long)1l, (long)2l)))) == (true));
    assert(move_one_ball((new ArrayList<Long>(Arrays.asList((long)4l, (long)3l, (long)1l, (long)2l)))) == (false));
    assert(move_one_ball((new ArrayList<Long>(Arrays.asList((long)3l, (long)5l, (long)4l, (long)1l, (long)2l)))) == (false));
    assert(move_one_ball((new ArrayList<Long>(Arrays.asList()))) == (true));
    }

}

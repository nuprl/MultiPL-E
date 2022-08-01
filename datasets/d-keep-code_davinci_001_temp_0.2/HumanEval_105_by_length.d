import std.typecons;
import std.math;
/*

    Given an array of integers, sort the integers that are between 1 and 9 inclusive,
    reverse the resulting array, and then replace each digit by its corresponding name from
    "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".

    For example:
      arr = [2, 1, 1, 4, 5, 8, 2, 3]   
            -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
            -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
      return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
    
      If the array is empty, return an empty array:
      arr = []
      return []
    
      If the array has any strange number ignore it:
      arr = [1, -1 , 55] 
            -> sort arr -> [-1, 1, 55]
            -> reverse arr -> [55, 1, -1]
      return = ['One']
    
*/
string[] by_length(long[] arr) 
{
  var len = arr.Length;
  var res = new string[len];
  for (var i = 0; i < len; i++)
  {
    res[i] = arr[i].ToString();
  }
  return res;
}

unittest
{
    alias candidate = by_length;

    assert(candidate([2L, 1L, 1L, 4L, 5L, 8L, 2L, 3L]) == ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]);
    assert(candidate([]) == []);
    assert(candidate([1L, -1L, 55L]) == ["One"]);
    assert(candidate([1L, -1L, 3L, 2L]) == ["Three", "Two", "One"]);
    assert(candidate([9L, 4L, 8L]) == ["Nine", "Eight", "Four"]);
}
void main(){}
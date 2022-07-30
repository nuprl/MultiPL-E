import std.math;
import std.typecons;
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
const(char)[][] by_length(long[] arr) 
{
    var result = new const(char)[][];
    var i = 0;
    var j = 0;
    var temp = new const(char)[arr.length];
    var temp_arr = new const(char)[arr.length];
    var temp_arr_2 = new const(char)[arr.length];
    var temp_arr_3 = new const(char)[arr.length];
    var temp_arr_4 = new const(char)[arr.length];
    var temp_arr_5 = new const(char)[arr.length];
    var temp_arr_6 = new const(char)[arr.length];
    var temp_arr_7 = new const(char)[arr.length];
    var temp_arr_8 = new const(char)[arr.length];
    var temp_arr_9 = new const(char)[arr.length];
    var temp_arr_10 = new const(char)[arr.length];
    var temp_arr_11 = new const(char)[arr.length];
    var temp_arr_12 = new const(char)[arr.length];
    var temp_arr_13 = new const(char)[arr.length];
    var temp_arr_14 = new const(char)[arr.length];
    var temp_arr_15 = new const(char)[arr.length];
    var temp_arr_16 = new const(char)[arr.length];
    var temp_arr_17 = new const(char)[arr.length];
    var temp_arr_18 = new const(char)[arr.length];
    var temp_arr_19 = new const(char)[arr.length];
    var temp_arr_20 = new const(char)[arr.length];
    var temp_arr_21 = new const(char)[arr.length];
    var temp_arr_22 = new const(char)[arr.length];
    var temp_arr_23 = new const(char)[arr.length];
    var temp_arr_24 = new const(char)[arr.length];
    var temp_arr_25 = new const(char)[arr.length];
    var temp_arr_26 = new

unittest
{
    alias candidate = by_length;

    assert(candidate([2, 1, 1, 4, 5, 8, 2, 3]) == ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]);
    assert(candidate([]) == []);
    assert(candidate([1, -1, 55]) == ["One"]);
    assert(candidate([1, -1, 3, 2]) == ["Three", "Two", "One"]);
    assert(candidate([9, 4, 8]) == ["Nine", "Eight", "Four"]);
}
void main(){}
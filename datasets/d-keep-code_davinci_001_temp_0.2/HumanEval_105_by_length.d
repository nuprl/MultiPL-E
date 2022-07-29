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
const(char)[][] by_length(int[] arr) 
{
    var result = new const(char)[][];
    var i = 0;
    var j = 0;
    var k = 0;
    var l = 0;
    var m = 0;
    var n = 0;
    var o = 0;
    var p = 0;
    var q = 0;
    var r = 0;
    var s = 0;
    var t = 0;
    var u = 0;
    var v = 0;
    var w = 0;
    var x = 0;
    var y = 0;
    var z = 0;
    var aa = 0;
    var ab = 0;
    var ac = 0;
    var ad = 0;
    var ae = 0;
    var af = 0;
    var ag = 0;
    var ah = 0;
    var ai = 0;
    var aj = 0;
    var ak = 0;
    var al = 0;
    var am = 0;
    var an = 0;
    var ao = 0;
    var ap = 0;
    var aq = 0;
    var ar = 0;
    var as = 0;
    var at = 0;
    var au = 0;
    var av = 0;
    var aw = 0;
    var ax = 0;
    var ay = 0;
    var az = 0;
    var ba = 0;
    var bb = 0;
    var bc = 0;
    var bd = 0;
    var be = 0;
    var bf = 0;
    var bg = 0;
    var bh = 0;
    var bi = 0;
    var bj = 0;
    var bk = 0;
    var bl = 0;
    var bm = 0;
    var bn = 0;
    var bo = 0;
    var bp = 0;
    var bq = 0;
    var br = 0;
    var bs = 0;
    var bt = 0;
    var bu = 0;
    var bv = 0;
    var b

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
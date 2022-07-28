
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
    int[] sorted = arr.sort();
    int[] reversed = arr.reverse();
    int[] result = new int[sorted.length];
    for(int i = 0; i < sorted.length; i++)
    {
        if(sorted[i] >= 1 && sorted[i] <= 9)
        {
            result[i] = sorted[i];
        }
    }
    return result;
}

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
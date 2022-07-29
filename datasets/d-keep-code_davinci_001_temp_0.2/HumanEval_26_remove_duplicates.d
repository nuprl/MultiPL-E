import std.typecons;
import std.math;
/*
 From a list of integers, remove all elements that occur more than once.
    Keep order of elements left the same as in the input.
    >>> remove_duplicates([1, 2, 3, 2, 4])
    [1, 3, 4]
    
*/
int[] remove_duplicates(int[] numbers) 
{
    int[] result = new int[numbers.length];
    int i = 0;
    for (int j = 0; j < numbers.length; j++) {
        if (i == 0 || numbers[j] != result[i - 1]) {
            result[i] = numbers[j];
            i++;
        }
    }
    return result;
}

unittest
{
    alias candidate = remove_duplicates;

    assert(candidate([]) == []);
    assert(candidate([1, 2, 3, 4]) == [1, 2, 3, 4]);
    assert(candidate([1, 2, 3, 2, 4, 3, 5]) == [1, 4, 5]);
}
void main(){}
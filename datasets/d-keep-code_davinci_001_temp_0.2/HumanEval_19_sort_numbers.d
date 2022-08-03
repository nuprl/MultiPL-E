import std.typecons;
import std.math;
/*
 Input is a space-delimited string of numberals from 'zero' to 'nine'.
    Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
    Return the string with numbers sorted from smallest to largest
    >>> sort_numbers('three one five')
    'one three five'
    
*/
string sort_numbers(string numbers) 
{
    string *numbers_array = explode(numbers, " ");
    numbers_array = sort_array(numbers_array, (: $1 < $2 :));
    numbers = implode(numbers_array, " ");
    return numbers;
}

unittest
{
    alias candidate = sort_numbers;

    assert(candidate("") == "");
    assert(candidate("three") == "three");
    assert(candidate("three five nine") == "three five nine");
    assert(candidate("five zero four seven nine eight") == "zero four five seven eight nine");
    assert(candidate("six five four three two one zero") == "zero one two three four five six");
}
void main(){}
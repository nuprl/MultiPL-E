import std.math;
import std.typecons;
/*

    Write a function that returns True if the object q will fly, and False otherwise.
    The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.

    Example:
    will_it_fly([1, 2], 5) ➞ False 
    # 1+2 is less than the maximum possible weight, but it's unbalanced.

    will_it_fly([3, 2, 3], 1) ➞ False
    # it's balanced, but 3+2+3 is more than the maximum possible weight.

    will_it_fly([3, 2, 3], 9) ➞ True
    # 3+2+3 is less than the maximum possible weight, and it's balanced.

    will_it_fly([3], 5) ➞ True
    # 3 is less than the maximum possible weight, and it's balanced.
    
*/
bool will_it_fly(long[] q, long w) 
{
    return (sum(q) <= w) && (is_palindrome(q));
}

unittest
{
    alias candidate = will_it_fly;

    assert(candidate([3, 2, 3], 9) == true);
    assert(candidate([1, 2], 5) == false);
    assert(candidate([3], 5) == true);
    assert(candidate([3, 2, 3], 1) == false);
    assert(candidate([1, 2, 3], 6) == false);
    assert(candidate([5], 5) == true);
}
void main(){}
import std.math;
import std.typecons;
/*
In this problem, you will implement a function that takes two lists of numbers,
    and determines whether it is possible to perform an exchange of elements
    between them to make lst1 a list of only even numbers.
    There is no limit on the number of exchanged elements between lst1 and lst2.
    If it is possible to exchange elements between the lst1 and lst2 to make
    all the elements of lst1 to be even, return "YES".
    Otherwise, return "NO".
    For example:
    exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
    exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
    It is assumed that the input lists will be non-empty.
    
*/
string exchange(long[] lst1, long[] lst2) 
{
    // Write your code here
    return "YES";
}

unittest
{
    alias candidate = exchange;

    assert(candidate([1L, 2L, 3L, 4L], [1L, 2L, 3L, 4L]) == "YES");
    assert(candidate([1L, 2L, 3L, 4L], [1L, 5L, 3L, 4L]) == "NO");
    assert(candidate([1L, 2L, 3L, 4L], [2L, 1L, 4L, 3L]) == "YES");
    assert(candidate([5L, 7L, 3L], [2L, 6L, 4L]) == "YES");
    assert(candidate([5L, 7L, 3L], [2L, 6L, 3L]) == "NO");
    assert(candidate([3L, 2L, 6L, 1L, 8L, 9L], [3L, 5L, 5L, 1L, 1L, 1L]) == "NO");
    assert(candidate([100L, 200L], [200L, 200L]) == "YES");
}
void main(){}
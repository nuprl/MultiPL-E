import std.typecons;
import std.math;
/*
Write a function that accepts a list of strings as a parameter,
    deletes the strings that have odd lengths from it,
    and returns the resulted list with a sorted order,
    The list is always a list of strings and never an array of numbers,
    and it may contain duplicates.
    The order of the list should be ascending by length of each word, and you
    should return the list sorted by that rule.
    If two words have the same length, sort the list alphabetically.
    The function should return a list of strings in sorted order.
    You may assume that all words will have the same length.
    For example:
    assert list_sort(["aa", "a", "aaa"]) => ["aa"]
    assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
    
*/
const(char)[][] sorted_list_sum(const(char)[][] lst) 
{
    var(int) len = 0;
    var(char)[][] sorted_list = [];
    for(var(int) i = 0; i < lst.length; i++)
    {
        len = lst[i].length;
        for(var(int) j = 0; j < lst.length; j++)
        {
            if(len > lst[j].length)
            {
                len = lst[j].length;
            }
        }
        for(var(int) j = 0; j < lst.length; j++)
        {
            if(len == lst[j].length)
            {
                sorted_list.push(lst[j]);
            }
        }
    }
    return sorted_list;
}

unittest
{
    alias candidate = sorted_list_sum;

    assert(candidate(["aa", "a", "aaa"]) == ["aa"]);
    assert(candidate(["school", "AI", "asdf", "b"]) == ["AI", "asdf", "school"]);
    assert(candidate(["d", "b", "c", "a"]) == []);
    assert(candidate(["d", "dcba", "abcd", "a"]) == ["abcd", "dcba"]);
    assert(candidate(["AI", "ai", "au"]) == ["AI", "ai", "au"]);
    assert(candidate(["a", "b", "b", "c", "c", "a"]) == []);
    assert(candidate(["aaaa", "bbbb", "dd", "cc"]) == ["cc", "dd", "aaaa", "bbbb"]);
}
void main(){}
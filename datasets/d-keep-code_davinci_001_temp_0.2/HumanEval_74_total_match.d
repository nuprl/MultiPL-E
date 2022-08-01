import std.typecons;
import std.math;
/*

    Write a function that accepts two lists of strings and returns the list that has 
    total number of chars in the all strings of the list less than the other list.

    if the two lists have the same number of chars, return the first list.

    Examples
    total_match([], []) ➞ []
    total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
    total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
    total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
    total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
    
*/
string[] total_match(string[] lst1, string[] lst2) 
{
    int len1 = 0;
    int len2 = 0;
    for (int i = 0; i < lst1.Length; i++)
    {
        len1 += lst1[i].Length;
    }
    for (int i = 0; i < lst2.Length; i++)
    {
        len2 += lst2[i].Length;
    }
    if (len1 < len2)
    {
        return lst1;
    }
    else if (len1 > len2)
    {
        return lst2;
    }
    else
    {
        return lst1;
    }
}

unittest
{
    alias candidate = total_match;

    assert(candidate([], []) == []);
    assert(candidate(["hi", "admin"], ["hi", "hi"]) == ["hi", "hi"]);
    assert(candidate(["hi", "admin"], ["hi", "hi", "admin", "project"]) == ["hi", "admin"]);
    assert(candidate(["4"], ["1", "2", "3", "4", "5"]) == ["4"]);
    assert(candidate(["hi", "admin"], ["hI", "Hi"]) == ["hI", "Hi"]);
    assert(candidate(["hi", "admin"], ["hI", "hi", "hi"]) == ["hI", "hi", "hi"]);
    assert(candidate(["hi", "admin"], ["hI", "hi", "hii"]) == ["hi", "admin"]);
    assert(candidate([], ["this"]) == []);
    assert(candidate(["this"], []) == []);
}
void main(){}
import std.typecons;
import std.math;
/*
Given a list of strings, where each string consists of only digits, return a list.
    Each element i of the output should be "the number of odd elements in the
    string i of the input." where all the i's should be replaced by the number
    of odd digits in the i'th string of the input.

    >>> odd_count(['1234567'])
    ["the number of odd elements 4n the str4ng 4 of the 4nput."]
    >>> odd_count(['3',"11111111"])
    ["the number of odd elements 1n the str1ng 1 of the 1nput.",
     "the number of odd elements 8n the str8ng 8 of the 8nput."]
    
*/
const(char)[][] odd_count(const(char)[][] lst) 
{
    return lst.map(s => "the number of odd elements " + std.math.count_odd(s) + "n the str" + std.math.count_odd(s) + "g " + s + " of the " + s + "put.");
}

unittest
{
    alias candidate = odd_count;

    assert(candidate(["1234567"]) == ["the number of odd elements 4n the str4ng 4 of the 4nput."]);
    assert(candidate(["3", "11111111"]) == ["the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."]);
    assert(candidate(["271", "137", "314"]) == ["the number of odd elements 2n the str2ng 2 of the 2nput.", "the number of odd elements 3n the str3ng 3 of the 3nput.", "the number of odd elements 2n the str2ng 2 of the 2nput."]);
}
void main(){}
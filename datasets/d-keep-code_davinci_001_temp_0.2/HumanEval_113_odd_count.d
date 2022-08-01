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
string[] odd_count(string[] lst) 
{
    string[] ret = new string[lst.Length];
    for (int i = 0; i < lst.Length; i++)
    {
        int count = 0;
        for (int j = 0; j < lst[i].Length; j++)
        {
            if (lst[i][j] - '0' % 2 == 1)
            {
                count++;
            }
        }
        ret[i] = "the number of odd elements " + count + "n the str" + count + " of the " + count + "put.";
    }
    return ret;
}

unittest
{
    alias candidate = odd_count;

    assert(candidate(["1234567"]) == ["the number of odd elements 4n the str4ng 4 of the 4nput."]);
    assert(candidate(["3", "11111111"]) == ["the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."]);
    assert(candidate(["271", "137", "314"]) == ["the number of odd elements 2n the str2ng 2 of the 2nput.", "the number of odd elements 3n the str3ng 3 of the 3nput.", "the number of odd elements 2n the str2ng 2 of the 2nput."]);
}
void main(){}
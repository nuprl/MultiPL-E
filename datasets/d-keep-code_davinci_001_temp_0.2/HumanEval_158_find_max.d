
/*
Write a function that accepts a list of strings.
    The list contains different words. Return the word with maximum number
    of unique characters. If multiple strings have maximum number of unique
    characters, return the one which comes first in lexicographical order.

    find_max(["name", "of", "string"]) == "string"
    find_max(["name", "enam", "game"]) == "enam"
    find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
    
*/
const(char)[] find_max(const(char)[][] words) 
{
    int max_len = 0;
    int max_len_index = 0;
    for (int i = 0; i < words.length; i++)
    {
        if (words[i].length > max_len)
        {
            max_len = words[i].length;
            max_len_index = i;
        }
    }
    return words[max_len_index];
}

unittest
{
    alias candidate = find_max;

    assert(candidate(["name", "of", "string"]) == "string");
    assert(candidate(["name", "enam", "game"]) == "enam");
    assert(candidate(["aaaaaaa", "bb", "cc"]) == "aaaaaaa");
    assert(candidate(["abc", "cba"]) == "abc");
    assert(candidate(["play", "this", "game", "of", "footbott"]) == "footbott");
    assert(candidate(["we", "are", "gonna", "rock"]) == "gonna");
    assert(candidate(["we", "are", "a", "mad", "nation"]) == "nation");
    assert(candidate(["this", "is", "a", "prrk"]) == "this");
    assert(candidate(["b"]) == "b");
    assert(candidate(["play", "play", "play"]) == "play");
}
void main(){}
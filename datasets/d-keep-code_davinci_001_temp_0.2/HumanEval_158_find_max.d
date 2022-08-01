import std.typecons;
import std.math;
/*
Write a function that accepts a list of strings.
    The list contains different words. Return the word with maximum number
    of unique characters. If multiple strings have maximum number of unique
    characters, return the one which comes first in lexicographical order.

    find_max(["name", "of", "string"]) == "string"
    find_max(["name", "enam", "game"]) == "enam"
    find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
    
*/
string find_max(string[] words) 
{
    string max = "";
    int max_count = 0;
    for(int i = 0; i < words.length; i++)
    {
        string word = words[i];
        int count = 0;
        for(int j = 0; j < word.length; j++)
        {
            if(word[j] != ' ')
            {
                count++;
            }
        }
        if(count > max_count)
        {
            max_count = count;
            max = word;
        }
    }
    return max;
}
string[] words = ["name", "of", "string"];
find_max(words);
string[] words = ["name", "enam", "game"];
find_max(words);
string[] words = ["aaaaaaa", "bb" ,"cc"];
find_max(words);


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
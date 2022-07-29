import std.math;
import std.typecons;
/*

    You are given a string representing a sentence,
    the sentence contains some words separated by a space,
    and you have to return a string that contains the words from the original sentence,
    whose lengths are prime numbers,
    the order of the words in the new string should be the same as the original one.

    Example 1:
        Input: sentence = "This is a test"
        Output: "is"

    Example 2:
        Input: sentence = "lets go for swimming"
        Output: "go for"

    Constraints:
        * 1 <= len(sentence) <= 100
        * sentence contains only letters
    
*/
const(char)[] words_in_sentence(const(char)[] sentence) 
{
    const(char)[] words = [];
    int start = 0;
    for(int i = 0; i < len(sentence); i++)
    {
        if(sentence[i] == ' ')
        {
            words.append(sentence[start:i]);
            start = i + 1;
        }
    }
    words.append(sentence[start:len(sentence)]);
    return words;
}

unittest
{
    alias candidate = words_in_sentence;

    assert(candidate("This is a test") == "is");
    assert(candidate("lets go for swimming") == "go for");
    assert(candidate("there is no place available here") == "there is no place");
    assert(candidate("Hi I am Hussein") == "Hi am Hussein");
    assert(candidate("go for it") == "go for it");
    assert(candidate("here") == "");
    assert(candidate("here is") == "is");
}
void main(){}
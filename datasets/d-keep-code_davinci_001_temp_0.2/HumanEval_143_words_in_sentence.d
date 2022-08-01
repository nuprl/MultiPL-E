import std.typecons;
import std.math;
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
string words_in_sentence(string sentence) 
{
    string res;
    int len = sentence.length();
    for (int i = 0; i < len; i++) {
        if (sentence[i] == ' ') {
            if (is_prime(sentence.substr(i - 1, 1).length())) {
                res += sentence.substr(i - 1, 1);
            }
        }
    }
    if (is_prime(sentence.substr(len - 1, 1).length())) {
        res += sentence.substr(len - 1, 1);
    }
    return res;
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
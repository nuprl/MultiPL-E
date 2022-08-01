import std.typecons;
import std.math;
/*
You are given a word. Your task is to find the closest vowel that stands between 
    two consonants from the right side of the word (case sensitive).
    
    Vowels in the beginning and ending doesn't count. Return empty string if you didn't
    find any vowel met the above condition. 

    You may assume that the given string contains English letter only.

    Example:
    get_closest_vowel("yogurt") ==> "u"
    get_closest_vowel("FULL") ==> "U"
    get_closest_vowel("quick") ==> ""
    get_closest_vowel("ab") ==> ""
    
*/
string get_closest_vowel(string word) 
{
    string vowels = "aeiou";
    int i = 0;
    int j = word.length() - 1;
    while (i < word.length() && !std.math.is_vowel(word[i]))
        i++;
    while (j >= 0 && !std.math.is_vowel(word[j]))
        j--;
    if (i >= word.length() || j < 0)
        return "";
    int min_diff = word.length();
    int min_diff_index = -1;
    for (int k = i; k < j; k++)
    {
        if (std.math.is_vowel(word[k]))
        {
            int diff = j - k;
            if (diff < min_diff)
            {
                min_diff = diff;
                min_diff_index = k;
            }
        }
    }
    return word[min_diff_index];
}

unittest
{
    alias candidate = get_closest_vowel;

    assert(candidate("yogurt") == "u");
    assert(candidate("full") == "u");
    assert(candidate("easy") == "");
    assert(candidate("eAsy") == "");
    assert(candidate("ali") == "");
    assert(candidate("bad") == "a");
    assert(candidate("most") == "o");
    assert(candidate("ab") == "");
    assert(candidate("ba") == "");
    assert(candidate("quick") == "");
    assert(candidate("anime") == "i");
    assert(candidate("Asia") == "");
    assert(candidate("Above") == "o");
}
void main(){}
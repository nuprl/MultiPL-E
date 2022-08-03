import std.math;
import std.typecons;
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
    int i = 0;
    int j = word.length() - 1;
    while (i < word.length() && !is_vowel(word[i])) {
        i++;
    }
    while (j >= 0 && !is_vowel(word[j])) {
        j--;
    }
    if (i >= word.length() || j < 0) {
        return "";
    }
    int min_dist = word.length();
    int min_dist_index = 0;
    for (int k = i; k < j; k++) {
        if (is_vowel(word[k]) && abs(k - i) < min_dist) {
            min_dist = abs(k - i);
            min_dist_index = k;
        }
    }
    return word[min_dist_index];
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
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
const(char)[] get_closest_vowel(const(char)[] word) 
{
    const(char)[] vowels = {'a', 'e', 'i', 'o', 'u'};
    int[] consonants = {'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'};
    int[] vowels_positions = {};
    int[] consonants_positions = {};
    int[] positions = {};
    int[] distances = {};
    int[] closest_vowels = {};
    int closest_vowel_position = 0;
    int closest_vowel_distance = 0;
    int closest_vowel = 0;
    int closest_vowel_index = 0;
    int closest_vowel_index_position = 0;
    int closest_vowel_index_distance = 0;
    int closest_vowel_index_closest_vowel = 0;
    int closest_vowel_index_closest_vowel_index = 0;
    int closest_vowel_index_closest_vowel_index_position = 0;
    int closest_vowel_index_closest_vowel_index_distance = 0;
    int closest_vowel_index_closest_vowel_index_closest_vowel = 0;
    int closest_vowel_index_closest_vowel_index_closest_vowel_index = 0;
    int closest_vowel_index_closest_vowel_index_closest_vowel_index_position = 0;
    int closest_vowel_index_closest_vowel_index_closest_vowel_index_distance = 0;
    int closest_vowel_index_closest_vowel_index_closest_vowel_index_closest_vowel =

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
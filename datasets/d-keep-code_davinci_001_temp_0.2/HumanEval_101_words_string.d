import std.math;
import std.typecons;
/*

    You will be given a string of words separated by commas or spaces. Your task is
    to split the string into words and return an array of the words.
    
    For example:
    words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
    words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
    
*/
string[] words_string(string s) 
{
    return s.split(", ");
}

unittest
{
    alias candidate = words_string;

    assert(candidate("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]);
    assert(candidate("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]);
    assert(candidate("Hi, my name") == ["Hi", "my", "name"]);
    assert(candidate("One,, two, three, four, five, six,") == ["One", "two", "three", "four", "five", "six"]);
    assert(candidate("") == []);
    assert(candidate("ahmed     , gamal") == ["ahmed", "gamal"]);
}
void main(){}
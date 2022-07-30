import std.math;
import std.typecons;
/*
Given a string representing a space separated lowercase letters, return a dictionary
    of the letter with the most repetition and containing the corresponding count.
    If several letters have the same occurrence, return all of them.
    
    Example:
    histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
    histogram('a b b a') == {'a': 2, 'b': 2}
    histogram('a b c a b') == {'a': 2, 'b': 2}
    histogram('b b b b a') == {'b': 4}
    histogram('') == {}

    
*/
long[const(char)[]] histogram(const(char)[] test) 
{
    long[const(char)[]] result = {};
    for (int i = 0; i < test.length; i++)
    {
        if (result[test[i]] == null)
        {
            result[test[i]] = 1;
        }
        else
        {
            result[test[i]]++;
        }
    }
    return result;
}

unittest
{
    alias candidate = histogram;

    assert(candidate("a b b a") == ["a": 2, "b": 2]);
    assert(candidate("a b c a b") == ["a": 2, "b": 2]);
    assert(candidate("a b c d g") == ["a": 1, "b": 1, "c": 1, "d": 1, "g": 1]);
    assert(candidate("r t g") == ["r": 1, "t": 1, "g": 1]);
    assert(candidate("b b b b a") == ["b": 4]);
    assert(candidate("r t g") == ["r": 1, "t": 1, "g": 1]);
    assert(candidate("") == []);
    assert(candidate("a") == ["a": 1]);
}
void main(){}
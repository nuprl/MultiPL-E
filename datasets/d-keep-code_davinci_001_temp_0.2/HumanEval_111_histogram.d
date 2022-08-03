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
Nullable!(long[string]) histogram(string test) 
{
    var dict = new Dictionary<string, long>();
    foreach(var c in test.Split(' '))
    {
        if(dict.ContainsKey(c))
        {
            dict[c]++;
        }
        else
        {
            dict[c] = 1;
        }
    }
    return dict;
}

unittest
{
    alias candidate = histogram;

{
        auto result = candidate("a b b a");
        assert(!result.isNull && result.get == ["a": 2L, "b": 2L]);
}

{
        auto result = candidate("a b c a b");
        assert(!result.isNull && result.get == ["a": 2L, "b": 2L]);
}

{
        auto result = candidate("a b c d g");
        assert(!result.isNull && result.get == ["a": 1L, "b": 1L, "c": 1L, "d": 1L, "g": 1L]);
}

{
        auto result = candidate("r t g");
        assert(!result.isNull && result.get == ["r": 1L, "t": 1L, "g": 1L]);
}

{
        auto result = candidate("b b b b a");
        assert(!result.isNull && result.get == ["b": 4L]);
}

{
        auto result = candidate("r t g");
        assert(!result.isNull && result.get == ["r": 1L, "t": 1L, "g": 1L]);
}

{
        auto result = candidate("");
        assert(result.isNull);
}

{
        auto result = candidate("a");
        assert(!result.isNull && result.get == ["a": 1L]);
}

}
void main(){}
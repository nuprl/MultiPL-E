import std.typecons;
import std.math;
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
Nullable!(long[const(char)[]]) histogram(const(char)[] test) 
{
    Nullable!(long[const(char)[]]) result;
    result = new long[const(char)[]];
    if(test.length == 0)
    {
        return result;
    }
    long max = 0;
    long counter;
    long[] counts;
    counts = new long[const(char)[]];
    for(int i = 0; i < test.length; i++)
    {
        counter = 0;
        for(int j = 0; j < test.length; j++)
        {
            if(test[i] == test[j])
            {
                counter++;
            }
        }
        counts[i] = counter;
        if(counter > max)
        {
            max = counter;
        }
    }
    for(int i = 0; i < test.length; i++)
    {
        if(counts[i] == max)
        {
            result[i] = test[i];
        }
    }
    return result;
}


unittest
{
    alias candidate = histogram;

{
        auto result = candidate("a b b a");
        assert(!result.isNull && result.get == ["a": 2, "b": 2]);
}

{
        auto result = candidate("a b c a b");
        assert(!result.isNull && result.get == ["a": 2, "b": 2]);
}

{
        auto result = candidate("a b c d g");
        assert(!result.isNull && result.get == ["a": 1, "b": 1, "c": 1, "d": 1, "g": 1]);
}

{
        auto result = candidate("r t g");
        assert(!result.isNull && result.get == ["r": 1, "t": 1, "g": 1]);
}

{
        auto result = candidate("b b b b a");
        assert(!result.isNull && result.get == ["b": 4]);
}

{
        auto result = candidate("r t g");
        assert(!result.isNull && result.get == ["r": 1, "t": 1, "g": 1]);
}

{
        auto result = candidate("");
        assert(!result.isNull && result.get == []);
}

{
        auto result = candidate("a");
        assert(!result.isNull && result.get == ["a": 1]);
}

}
void main(){}
import std.typecons;
import std.math;
/*

    You'll be given a string of words, and your task is to count the number
    of boredoms. A boredom is a sentence that starts with the word "I".
    Sentences are delimited by '.', '?' or '!'.
   
    For example:
    >>> is_bored("Hello world")
    0
    >>> is_bored("The sky is blue. The sun is shining. I love this weather")
    1
    
*/
long is_bored(string S) 
{
    long boredoms = 0;
    for (int i = 0; i < S.length(); i++)
    {
        if (S[i] == '.' || S[i] == '?' || S[i] == '!')
        {
            if (S[i-1] == 'I')
            {
                boredoms++;
            }
        }
    }
    return boredoms;
}

unittest
{
    alias candidate = is_bored;

    assert(candidate("Hello world") == 0L);
    assert(candidate("Is the sky blue?") == 0L);
    assert(candidate("I love It !") == 1L);
    assert(candidate("bIt") == 0L);
    assert(candidate("I feel good today. I will be productive. will kill It") == 2L);
    assert(candidate("You and I are going for a walk") == 0L);
}
void main(){}
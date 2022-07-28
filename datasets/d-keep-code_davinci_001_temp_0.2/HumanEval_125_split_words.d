
/*

    Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
    should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
    alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
    Examples
    split_words("Hello world!") ➞ ["Hello", "world!"]
    split_words("Hello,world!") ➞ ["Hello", "world!"]
    split_words("abcdef") == 3 
    
*/
auto split_words(const(char)[] txt) 
{
    auto words = vector<string>();
    auto word = string();
    auto c = 0;
    for(auto i = 0; i < txt.size(); ++i)
    {
        if(txt[i] == ' ')
        {
            if(word.size())
            {
                words.push_back(word);
                word = string();
            }
        }
        else if(txt[i] == ',')
        {
            if(word.size())
            {
                words.push_back(word);
                word = string();
            }
        }
        else
        {
            word += txt[i];
        }
    }
    if(word.size())
    {
        words.push_back(word);
    }
    return words;
}

unittest
{
    alias candidate = split_words;

    assert(candidate("Hello world!") == ["Hello", "world!"]);
    assert(candidate("Hello,world!") == ["Hello", "world!"]);
    assert(candidate("Hello world,!") == ["Hello", "world,!"]);
    assert(candidate("Hello,Hello,world !") == ["Hello,Hello,world", "!"]);
    assert(candidate("abcdef") == 3);
    assert(candidate("aaabb") == 2);
    assert(candidate("aaaBb") == 1);
    assert(candidate("") == 0);
}
void main(){}
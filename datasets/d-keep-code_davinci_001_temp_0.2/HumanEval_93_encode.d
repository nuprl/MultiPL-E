import std.math;
import std.typecons;
/*

    Write a function that takes a message, and encodes in such a 
    way that it swaps case of all letters, replaces all vowels in 
    the message with the letter that appears 2 places ahead of that 
    vowel in the english alphabet. 
    Assume only letters. 
    
    Examples:
    >>> encode('test')
    'TGST'
    >>> encode('This is a message')
    'tHKS KS C MGSSCGG'
    
*/
string encode(string message) 
{
    string encoded = "";
    for (int i = 0; i < message.length(); i++)
    {
        if (message[i] >= 'a' && message[i] <= 'z')
        {
            if (message[i] == 'a')
            {
                encoded += 'b';
            }
            else if (message[i] == 'e')
            {
                encoded += 'f';
            }
            else if (message[i] == 'i')
            {
                encoded += 'j';
            }
            else if (message[i] == 'o')
            {
                encoded += 'p';
            }
            else if (message[i] == 'u')
            {
                encoded += 'v';
            }
            else if (message[i] == 'y')
            {
                encoded += 'z';
            }
            else
            {
                encoded += message[i];
            }
        }
        else
        {
            encoded += message[i];
        }
    }
    return encoded;
}

unittest
{
    alias candidate = encode;

    assert(candidate("TEST") == "tgst");
    assert(candidate("Mudasir") == "mWDCSKR");
    assert(candidate("YES") == "ygs");
    assert(candidate("This is a message") == "tHKS KS C MGSSCGG");
    assert(candidate("I DoNt KnOw WhAt tO WrItE") == "k dQnT kNqW wHcT Tq wRkTg");
}
void main(){}
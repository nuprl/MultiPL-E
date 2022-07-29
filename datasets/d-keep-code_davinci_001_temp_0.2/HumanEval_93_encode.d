import std.typecons;
import std.math;
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
const(char)[] encode(const(char)[] message) 
{
    const(char)[] encoded_message = [];
    for(int i = 0; i < message.length; i++)
    {
        if(message[i] >= 'a' && message[i] <= 'z')
        {
            if(message[i] == 'a')
            {
                encoded_message.push('b');
            }
            else if(message[i] == 'e')
            {
                encoded_message.push('f');
            }
            else if(message[i] == 'i')
            {
                encoded_message.push('j');
            }
            else if(message[i] == 'o')
            {
                encoded_message.push('p');
            }
            else if(message[i] == 'u')
            {
                encoded_message.push('v');
            }
            else if(message[i] == 'y')
            {
                encoded_message.push('z');
            }
            else if(message[i] == 'z')
            {
                encoded_message.push('a');
            }
            else if(message[i] == 'b')
            {
                encoded_message.push('a');
            }
            else if(message[i] == 'f')
            {
                encoded_message.push('e');
            }
            else if(message[i] == 'j')
            {
                encoded_message.push('i');
            }
            else if(message[i] == 'p')
            {
                encoded_message.push('o');
            }
            else if(message[i] == 'v')
            {
                encoded_message.push('u');
            }
            else if(message[i] == 'z')
            {
                encoded_message.push('y');
            }
            else
            {
                encoded_message.push(message[i]);
            }
        }
        else
        {
            encoded_message.push(message[i]);
        }
    }
    return encoded_message;
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
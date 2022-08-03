import std.typecons;
import std.math;
/*
Create a function encrypt that takes a string as an argument and
    returns a string encrypted with the alphabet being rotated. 
    The alphabet should be rotated in a manner such that the letters 
    shift down by two multiplied to two places.
    For example:
    encrypt('hi') returns 'lm'
    encrypt('asdfghjkl') returns 'ewhjklnop'
    encrypt('gf') returns 'kj'
    encrypt('et') returns 'ix'
    
*/
string encrypt(string s) 
{
    string alphabet = "abcdefghijklmnopqrstuvwxyz";
    string newAlphabet = "";
    for (int i = 0; i < alphabet.length(); i++)
    {
        if (i + 2 < alphabet.length())
        {
            newAlphabet += alphabet[i + 2];
        }
        else
        {
            newAlphabet += alphabet[(i + 2) - alphabet.length()];
        }
    }
    string encrypted = "";
    for (int i = 0; i < s.length(); i++)
    {
        encrypted += newAlphabet[alphabet.indexOf(s[i])];
    }
    return encrypted;
}
/*
Create a function decrypt that takes a string as an argument and
    returns a string decrypted with the alphabet being rotated. 
    The alphabet should be rotated in a manner such that the letters 
    shift down by two multiplied to two places.
    For example:
    decrypt('lm') returns 'hi'
    decrypt('ewhjklnop') returns 'asdfghjkl'
    decrypt('kj') returns 'gf'
    decrypt('ix') returns 'et'
*/
string decrypt(string s) 
{
    string alphabet = "abcdefghijklmnopqrstuvwxyz";
    string newAlphabet = "";
    for (int i = 0; i < alphabet.length(); i++)
    {
        if (i + 2 < alphabet.length())
        {
            newAlphabet += alphabet[i + 2];
        }
        else
        {
            newAlphabet += alphabet[(i + 2) - alphabet.length()];
        }
    }
    string decrypted = "";
    for (int i = 0; i < s.length(); i++)
    {
        decrypted += alphabet[newAlphabet.indexOf(s[i])];
    }
    return decrypted;
}
/*
Create a function encrypt that takes a string as an argument and
    returns a string encrypted with the alphabet being rotated. 
    The alphabet should be rotated in a manner such

unittest
{
    alias candidate = encrypt;

    assert(candidate("hi") == "lm");
    assert(candidate("asdfghjkl") == "ewhjklnop");
    assert(candidate("gf") == "kj");
    assert(candidate("et") == "ix");
    assert(candidate("faewfawefaewg") == "jeiajeaijeiak");
    assert(candidate("hellomyfriend") == "lippsqcjvmirh");
    assert(candidate("dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh") == "hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl");
    assert(candidate("a") == "e");
}
void main(){}
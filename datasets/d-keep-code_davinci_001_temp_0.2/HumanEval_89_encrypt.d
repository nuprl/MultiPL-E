import std.math;
import std.typecons;
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
const(char)[] encrypt(const(char)[] s) 
{
    return s;
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
const(char)[] decrypt(const(char)[] s) 
{
    return s;
}
/*
Create a function encrypt_file that takes a string as an argument and
    returns a string encrypted with the alphabet being rotated. 
    The alphabet should be rotated in a manner such that the letters 
    shift down by two multiplied to two places.
    For example:
    encrypt_file('hi') returns 'lm'
    encrypt_file('asdfghjkl') returns 'ewhjklnop'
    encrypt_file('gf') returns 'kj'
    encrypt_file('et') returns 'ix'
*/

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
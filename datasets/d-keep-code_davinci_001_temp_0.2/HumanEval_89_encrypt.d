
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
    const(char)[] encrypted = new(char)[s.length];
    for(int i = 0; i < s.length; i++)
    {
        encrypted[i] = (char)((s[i] + 2) * 2);
    }
    return encrypted;
}

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
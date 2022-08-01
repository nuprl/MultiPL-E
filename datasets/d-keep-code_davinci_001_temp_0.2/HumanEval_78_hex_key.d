import std.typecons;
import std.math;
/*
You have been tasked to write a function that receives 
    a hexadecimal number as a string and counts the number of hexadecimal 
    digits that are primes (prime number, or a prime, is a natural number 
    greater than 1 that is not a product of two smaller natural numbers).
    Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
    Prime numbers are 2, 3, 5, 7, 11, 13, 17,...
    So you have to determine a number of the following digits: 2, 3, 5, 7, 
    B (=decimal 11), D (=decimal 13).
    Note: you may assume the input is always correct or empty string, 
    and symbols A,B,C,D,E,F are always uppercase.
    Examples:
    For num = "AB" the output should be 1.
    For num = "1077E" the output should be 2.
    For num = "ABED1A33" the output should be 4.
    For num = "123456789ABCDEF0" the output should be 6.
    For num = "2020" the output should be 2.
    
*/
long hex_key(const(char)[] num) 
{
    long key = 0;
    for(int i = 0; i < num.length; i++)
    {
        switch(num[i])
        {
            case '0': key += 0; break;
            case '1': key += 1; break;
            case '2': key += 2; break;
            case '3': key += 3; break;
            case '4': key += 4; break;
            case '5': key += 5; break;
            case '6': key += 6; break;
            case '7': key += 7; break;
            case '8': key += 8; break;
            case '9': key += 9; break;
            case 'A': key += 10; break;
            case 'B': key += 11; break;
            case 'C': key += 12; break;
            case 'D': key += 13; break;
            case 'E': key += 14; break;
            case 'F': key += 15; break;
        }
    }
    return key;
}

unittest
{
    alias candidate = hex_key;

    assert(candidate("AB") == 1);
    assert(candidate("1077E") == 2);
    assert(candidate("ABED1A33") == 4);
    assert(candidate("2020") == 2);
    assert(candidate("123456789ABCDEF0") == 6);
    assert(candidate("112233445566778899AABBCCDDEEFF00") == 12);
}
void main(){}
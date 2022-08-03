import std.math;
import std.typecons;
/*
You will be given a number in decimal form and your task is to convert it to
    binary format. The function should return a string, with each character representing a binary
    number. Each character in the string will be '0' or '1'.

    There will be an extra couple of characters 'db' at the beginning and at the end of the string.
    The extra characters are there to help with the format.

    Examples:
    decimal_to_binary(15)   # returns "db1111db"
    decimal_to_binary(32)   # returns "db100000db"
    
*/
string decimal_to_binary(long decimal) 
{
    string binary = "";
    while (decimal > 0)
    {
        binary = std.math.to_string(decimal % 2) + binary;
        decimal /= 2;
    }
    return "db" + binary + "db";
}

unittest
{
    alias candidate = decimal_to_binary;

    assert(candidate(0L) == "db0db");
    assert(candidate(32L) == "db100000db");
    assert(candidate(103L) == "db1100111db");
    assert(candidate(15L) == "db1111db");
}
void main(){}
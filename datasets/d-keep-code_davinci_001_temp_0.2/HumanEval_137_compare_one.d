
/*

    Create a function that takes integers, floats, or strings representing
    real numbers, and returns the larger variable in its given variable type.
    Return None if the values are equal.
    Note: If a real number is represented as a string, the floating point might be . or ,

    compare_one(1, 2.5) ➞ 2.5
    compare_one(1, "2,3") ➞ "2,3"
    compare_one("5,1", "6") ➞ "6"
    compare_one("1", 1) ➞ None
    
*/
auto compare_one(auto a, auto b) 
{
    if (a == b)
        return nullptr;
    if (a > b)
        return a;
    return b;
}

unittest
{
    alias candidate = compare_one;

    assert(candidate(1, 2) == 2);
    assert(candidate(1, 2.5) == 2.5);
    assert(candidate(2, 3) == 3);
    assert(candidate(5, 6) == 6);
    assert(candidate(1, "2,3") == "2,3");
    assert(candidate("5,1", "6") == "6");
    assert(candidate("1", "2") == "2");
    assert(candidate("1", 1) == None);
}
void main(){}
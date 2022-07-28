
/*

    Write a function that takes an integer a and returns True 
    if this ingeger is a cube of some integer number.
    Note: you may assume the input is always valid.
    Examples:
    iscube(1) ==> True
    iscube(2) ==> False
    iscube(-1) ==> True
    iscube(64) ==> True
    iscube(0) ==> True
    iscube(180) ==> False
    
*/
bool iscube(int a) 
{
    if (a == 0)
        return true;
    if (a < 0)
        a = -a;
    double root = std::pow(a, 1.0 / 3.0);
    int rootint = static_cast<int>(root);
    return rootint * rootint * rootint == a;
}

unittest
{
    alias candidate = iscube;

    assert(candidate(1) == true);
    assert(candidate(2) == false);
    assert(candidate(-1) == true);
    assert(candidate(64) == true);
    assert(candidate(180) == false);
    assert(candidate(1000) == true);
    assert(candidate(0) == true);
    assert(candidate(1729) == false);
}
void main(){}
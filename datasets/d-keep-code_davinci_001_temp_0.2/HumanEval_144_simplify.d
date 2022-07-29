import std.typecons;
import std.math;
/*
Your task is to implement a function that will simplify the expression
    x * n. The function returns True if x * n evaluates to a whole number and False
    otherwise. Both x and n, are string representation of a fraction, and have the following format,
    <numerator>/<denominator> where both numerator and denominator are positive whole numbers.

    You can assume that x, and n are valid fractions, and do not have zero as denominator.

    simplify("1/5", "5/1") = True
    simplify("1/6", "2/1") = False
    simplify("7/10", "10/2") = False
    
*/
bool simplify(const(char)[] x, const(char)[] n) 
{
    auto x_num = parse_int(x);
    auto x_den = parse_int(x);
    auto n_num = parse_int(n);
    auto n_den = parse_int(n);
    auto x_num_n_den = x_num * n_den;
    auto x_den_n_num = x_den * n_num;
    auto gcd = math.gcd(x_num_n_den, x_den_n_num);
    if (x_num_n_den % gcd == 0 && x_den_n_num % gcd == 0)
        return true;
    else
        return false;
}

unittest
{
    alias candidate = simplify;

    assert(candidate("1/5", "5/1") == true);
    assert(candidate("1/6", "2/1") == false);
    assert(candidate("5/1", "3/1") == true);
    assert(candidate("7/10", "10/2") == false);
    assert(candidate("2/10", "50/10") == true);
    assert(candidate("7/2", "4/2") == true);
    assert(candidate("11/6", "6/1") == true);
    assert(candidate("2/3", "5/2") == false);
    assert(candidate("5/2", "3/5") == false);
    assert(candidate("2/4", "8/4") == true);
    assert(candidate("2/4", "4/2") == true);
    assert(candidate("1/5", "5/1") == true);
    assert(candidate("1/5", "1/5") == false);
}
void main(){}
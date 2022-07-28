
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
    int x_num = 0, x_den = 0, n_num = 0, n_den = 0;
    int x_int = 0, n_int = 0;
    int x_num_int = 0, x_den_int = 0, n_num_int = 0, n_den_int = 0;
    int x_num_den = 0, x_den_den = 0, n_num_den = 0, n_den_den = 0;
    int x_num_n_num = 0, x_num_n_den = 0, x_den_n_num = 0, x_den_n_den = 0;
    int x_num_n_int = 0, x_den_n_int = 0;
    int x_num_n_num_int = 0, x_num_n_den_int = 0, x_den_n_num_int = 0, x_den_n_den_int = 0;
    int x_num_n_num_den = 0, x_num_n_den_den = 0, x_den_n_num_den = 0, x_den_n_den_den = 0;
    int x_num_n_num_den_int = 0, x_num_n_den_den_int = 0, x_den_n_num_den_int = 0, x_den_n_den_den_int = 0;
    int x_num_n_num_den_int_int = 0, x_num_n_den_den_int_int = 0, x_den_n_num_den_int_int = 0, x_den_n_den_den_int_int = 0;
    int x_num_n_num_den_int_int_int = 0, x_num_n_den_den_int_int_int = 0, x_den_n_num_den_int_int_int = 0, x_den_n_den_den_int_int_int = 0;
    int x_num_n_num_den_int_int_

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
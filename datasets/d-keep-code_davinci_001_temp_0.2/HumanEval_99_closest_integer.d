
/*

    Create a function that takes a value (string) representing a number
    and returns the closest integer to it. If the number is equidistant
    from two integers, round it away from zero.

    Examples
    >>> closest_integer("10")
    10
    >>> closest_integer("15.3")
    15

    Note:
    Rounding away from zero means that if the given number is equidistant
    from two integers, the one you should return is the one that is the
    farthest from zero. For example closest_integer("14.5") should
    return 15 and closest_integer("-14.5") should return -15.
    
*/
int closest_integer(const(char)[] value) 
{
    int result = 0;
    int i = 0;
    int j = 0;
    int k = 0;
    int l = 0;
    int m = 0;
    int n = 0;
    int o = 0;
    int p = 0;
    int q = 0;
    int r = 0;
    int s = 0;
    int t = 0;
    int u = 0;
    int v = 0;
    int w = 0;
    int x = 0;
    int y = 0;
    int z = 0;
    int aa = 0;
    int bb = 0;
    int cc = 0;
    int dd = 0;
    int ee = 0;
    int ff = 0;
    int gg = 0;
    int hh = 0;
    int ii = 0;
    int jj = 0;
    int kk = 0;
    int ll = 0;
    int mm = 0;
    int nn = 0;
    int oo = 0;
    int pp = 0;
    int qq = 0;
    int rr = 0;
    int ss = 0;
    int tt = 0;
    int uu = 0;
    int vv = 0;
    int ww = 0;
    int xx = 0;
    int yy = 0;
    int zz = 0;
    int aaa = 0;
    int bbb = 0;
    int ccc = 0;
    int ddd = 0;
    int eee = 0;
    int fff = 0;
    int ggg = 0;
    int hhh = 0;
    int iii = 0;
    int jjj = 0;
    int kkk = 0;
    int lll = 0;
    int mmm = 0;
    int nnn = 0;
    int ooo = 0;
    int ppp = 0;
    int qqq = 0;
    int rrr = 0;
    int sss = 0;
    int ttt = 0;
    int uuu = 0

unittest
{
    alias candidate = closest_integer;

    assert(candidate("10") == 10);
    assert(candidate("14.5") == 15);
    assert(candidate("-15.5") == -16);
    assert(candidate("15.3") == 15);
    assert(candidate("0") == 0);
}
void main(){}
import std.typecons;
import std.math;
/*
You are given a string s.
    Your task is to check if the string is happy or not.
    A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
    For example:
    is_happy(a) => False
    is_happy(aa) => False
    is_happy(abcd) => True
    is_happy(aabb) => False
    is_happy(adb) => True
    is_happy(xyy) => False
    
*/
bool is_happy(string s) 
{
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
    int s1 = 0;
    int t = 0;
    int u = 0;
    int v = 0;
    int w = 0;
    int x = 0;
    int y = 0;
    int z = 0;
    int a1 = 0;
    int b1 = 0;
    int c1 = 0;
    int d1 = 0;
    int e1 = 0;
    int f1 = 0;
    int g1 = 0;
    int h1 = 0;
    int i1 = 0;
    int j1 = 0;
    int k1 = 0;
    int l1 = 0;
    int m1 = 0;
    int n1 = 0;
    int o1 = 0;
    int p1 = 0;
    int q1 = 0;
    int r1 = 0;
    int s2 = 0;
    int t1 = 0;
    int u1 = 0;
    int v1 = 0;
    int w1 = 0;
    int x1 = 0;
    int y1 = 0;
    int z1 = 0;
    int a2 = 0;
    int b2 = 0;
    int c2 = 0;
    int d2 = 0;
    int e2 = 0;
    int f2 = 0;
    int g2 = 0;
    int h2 = 0;
    int i2 = 0;
    int j2 = 0;
    int k2 = 0;
    int l2 = 0;
    int m2 = 0;
    int n2 = 0;
    int o2 = 0;
    int p2 = 0;
    int q2 = 0;
    int r2 = 0;
    int s3 = 0;
    int t2 = 0;
    int

unittest
{
    alias candidate = is_happy;

    assert(candidate("a") == false);
    assert(candidate("aa") == false);
    assert(candidate("abcd") == true);
    assert(candidate("aabb") == false);
    assert(candidate("adb") == true);
    assert(candidate("xyy") == false);
    assert(candidate("iopaxpoi") == true);
    assert(candidate("iopaxioi") == false);
}
void main(){}
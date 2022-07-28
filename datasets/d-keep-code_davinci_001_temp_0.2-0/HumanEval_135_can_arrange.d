import std.typecons;
import std.math;
/*
Create a function which returns the largest index of an element which
    is not greater than or equal to the element immediately preceding it. If
    no such element exists then return -1. The given array will not contain
    duplicate values.

    Examples:
    can_arrange([1,2,4,3,5]) = 3
    can_arrange([1,2,3]) = -1
    
*/
int can_arrange(int[] arr) 
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
    int s = 0;
    int t = 0;
    int u = 0;
    int v = 0;
    int w = 0;
    int x = 0;
    int y = 0;
    int z = 0;
    int a = 0;
    int b = 0;
    int c = 0;
    int d = 0;
    int e = 0;
    int f = 0;
    int g = 0;
    int h = 0;
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
    int s1 = 0;
    int t1 = 0;
    int u1 = 0;
    int v1 = 0;
    int w1 = 0;
    int x1 = 0;
    int y1 = 0;
    int z1 = 0;
    int a1 = 0;
    int b1 = 0;
    int c1 = 0;
    int d1 = 0;
    int e1 = 0;
    int f1 = 0;
    int g1 = 0;
    int h1 = 0;
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
    int s2 = 0;
    int t2 = 0;
    int u2 = 0;
    int v

unittest
{
    alias candidate = can_arrange;

    assert(candidate([1, 2, 4, 3, 5]) == 3);
    assert(candidate([1, 2, 4, 5]) == -1);
    assert(candidate([1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2);
    assert(candidate([4, 8, 5, 7, 3]) == 4);
    assert(candidate([]) == -1);
}
void main(){}
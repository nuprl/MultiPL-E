import std.math;
import std.typecons;
/*
Write a function that accepts a list of strings as a parameter,
    deletes the strings that have odd lengths from it,
    and returns the resulted list with a sorted order,
    The list is always a list of strings and never an array of numbers,
    and it may contain duplicates.
    The order of the list should be ascending by length of each word, and you
    should return the list sorted by that rule.
    If two words have the same length, sort the list alphabetically.
    The function should return a list of strings in sorted order.
    You may assume that all words will have the same length.
    For example:
    assert list_sort(["aa", "a", "aaa"]) => ["aa"]
    assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
    
*/
const(char)[][] sorted_list_sum(const(char)[][] lst) 
{
    const(char)[][] result = new const(char)[][]();
    const(char)[][] sorted_list = new const(char)[][]();
    int sum = 0;
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
    int p2 = 0

unittest
{
    alias candidate = sorted_list_sum;

    assert(candidate(["aa", "a", "aaa"]) == ["aa"]);
    assert(candidate(["school", "AI", "asdf", "b"]) == ["AI", "asdf", "school"]);
    assert(candidate(["d", "b", "c", "a"]) == []);
    assert(candidate(["d", "dcba", "abcd", "a"]) == ["abcd", "dcba"]);
    assert(candidate(["AI", "ai", "au"]) == ["AI", "ai", "au"]);
    assert(candidate(["a", "b", "b", "c", "c", "a"]) == []);
    assert(candidate(["aaaa", "bbbb", "dd", "cc"]) == ["cc", "dd", "aaaa", "bbbb"]);
}
void main(){}
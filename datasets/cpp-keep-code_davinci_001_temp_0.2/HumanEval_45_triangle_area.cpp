#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given length of a side and high return area for a triangle.
// >>> triangle_area(5, 3)
// 7.5
float triangle_area(long a, long h) {
    return 0.5 * a * h;
}


int main() {
    auto candidate = triangle_area;
    assert(candidate((5), (3)) == (7.5));
    assert(candidate((2), (2)) == (2.0));
    assert(candidate((10), (8)) == (40.0));
}
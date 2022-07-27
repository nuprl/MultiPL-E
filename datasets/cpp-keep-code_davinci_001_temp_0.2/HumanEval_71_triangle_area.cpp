#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Given the lengths of the three sides of a triangle. Return the area of
// the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
// Otherwise return -1
// Three sides make a valid triangle when the sum of any two sides is greater 
// than the third side.
// Example:
// triangle_area(3, 4, 5) == 6.00
// triangle_area(1, 2, 10) == -1
float triangle_area(long a, long b, long c) {
    if(a+b>c && a+c>b && b+c>a){
        float s = (a+b+c)/2;
        return std::round(std::sqrt(s*(s-a)*(s-b)*(s-c))*100)/100;
    }
    return -1;
}


int main() {
    auto candidate = triangle_area;
    assert(candidate((3), (4), (5)) == (6.0));
    assert(candidate((1), (2), (10)) == (float(-1)));
    assert(candidate((4), (8), (5)) == (8.18));
    assert(candidate((2), (2), (2)) == (1.73));
    assert(candidate((1), (2), (3)) == (float(-1)));
    assert(candidate((10), (5), (7)) == (16.25));
    assert(candidate((2), (6), (3)) == (float(-1)));
    assert(candidate((1), (1), (1)) == (0.43));
    assert(candidate((2), (2), (10)) == (float(-1)));
}
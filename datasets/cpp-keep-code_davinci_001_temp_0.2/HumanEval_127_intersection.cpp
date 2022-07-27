#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// You are given two intervals,
// where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
// The given intervals are closed which means that the interval (start, end)
// includes both start and end.
// For each given interval, it is assumed that its start is less or equal its end.
// Your task is to determine whether the length of intersection of these two 
// intervals is a prime number.
// Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
// which its length is 1, which not a prime number.
// If the length of the intersection is a prime number, return "YES",
// otherwise, return "NO".
// If the two intervals don't intersect, return "NO".
// [input/output] samples:
// intersection((1, 2), (2, 3)) ==> "NO"
// intersection((-1, 1), (0, 4)) ==> "NO"
// intersection((-3, -1), (-5, 5)) ==> "YES"
std::string intersection(std::tuple<long, long> interval1, std::tuple<long, long> interval2) {
    std::optional<long> intersection_length = std::nullopt;
    std::optional<long> intersection_start = std::nullopt;
    std::optional<long> intersection_end = std::nullopt;
    std::optional<long> start1 = std::nullopt;
    std::optional<long> end1 = std::nullopt;
    std::optional<long> start2 = std::nullopt;
    std::optional<long> end2 = std::nullopt;
    if (std::get<0>(interval1) <= std::get<1>(interval1) && std::get<0>(interval2) <= std::get<1>(interval2)) {
        start1 = std::get<0>(interval1);
        end1 = std::get<1>(interval1);
        start2 = std::get<0>(interval2);
        end2 = std::get<1>(interval2);
    } else if (std::get<0>(interval1) <= std::get<1>(interval1) && std::get<0>(interval2) >= std::get<1>(interval2)) {
        start1 = std::get<0>(interval1);
        end1 = std::get<1>(interval1);
        start2 = std::get<0>(interval2);
        end2 = std::get<1>(interval2);
    } else if (std::get<0>(interval1) >= std::get<1>(interval1) && std::get<0>(interval2) <= std::get<1>(interval2)) {
        start1 = std::get<0>(interval1);
        end1 = std::get<1>(interval1);
        start2 = std::get<0>(interval2);
        end2 = std::get<1>(interval2);
    } else if (std::get<0>(interval1) >= std::get<1>(interval1) && std::get<0>(interval2) >= std::get<1>(interval2)) {
        start1 = std::


int main() {
    auto candidate = intersection;
    assert(candidate((std::make_tuple(1, 2)), (std::make_tuple(2, 3))) == ("NO"));
    assert(candidate((std::make_tuple(-1, 1)), (std::make_tuple(0, 4))) == ("NO"));
    assert(candidate((std::make_tuple(-3, -1)), (std::make_tuple(-5, 5))) == ("YES"));
    assert(candidate((std::make_tuple(-2, 2)), (std::make_tuple(-4, 0))) == ("YES"));
    assert(candidate((std::make_tuple(-11, 2)), (std::make_tuple(-1, -1))) == ("NO"));
    assert(candidate((std::make_tuple(1, 2)), (std::make_tuple(3, 5))) == ("NO"));
    assert(candidate((std::make_tuple(1, 2)), (std::make_tuple(1, 2))) == ("NO"));
    assert(candidate((std::make_tuple(-2, -2)), (std::make_tuple(-3, -2))) == ("NO"));
}
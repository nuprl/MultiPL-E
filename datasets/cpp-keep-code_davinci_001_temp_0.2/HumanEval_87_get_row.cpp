#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// You are given a 2 dimensional data, as a nested lists,
// which is similar to matrix, however, unlike matrices,
// each row may contain a different number of columns.
// Given lst, and integer x, find integers x in the list,
// and return list of tuples, [(x1, y1), (x2, y2) ...] such that
// each tuple is a coordinate - (row, columns), starting with 0.
// Sort coordinates initially by rows in ascending order.
// Also, sort coordinates of the row by columns in descending order.
// Examples:
// get_row([
// [1,2,3,4,5,6],
// [1,2,3,4,1,6],
// [1,2,3,4,5,1]
// ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
// get_row([], 1) == []
// get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
std::vector<std::tuple<long, long>> get_row(std::vector<std::vector<long>> lst, long x) {
    std::vector<std::tuple<long, long>> result;
    std::map<long, std::vector<std::tuple<long, long>>> map;
    for (long i = 0; i < lst.size(); i++) {
        for (long j = 0; j < lst[i].size(); j++) {
            if (lst[i][j] == x) {
                map[i].push_back(std::make_tuple(i, j));
            }
        }
    }
    for (auto& i : map) {
        std::sort(i.second.begin(), i.second.end(), [](std::tuple<long, long> a, std::tuple<long, long> b) {
            return std::get<0>(a) < std::get<0>(b);
        });
        std::sort(i.second.begin(), i.second.end(), [](std::tuple<long, long> a, std::tuple<long, long> b) {
            return std::get<1>(a) > std::get<1>(b);
        });
        result.insert(result.end(), i.second.begin(), i.second.end());
    }
    return result;
}


int main() {
    auto candidate = get_row;
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 2, 3, 4, 1, 6}), std::vector<long>({1, 2, 3, 4, 5, 1})})), (1)) == (std::vector<std::tuple<long, long>>({std::make_tuple(long(0), long(0)), std::make_tuple(long(1), long(4)), std::make_tuple(long(1), long(0)), std::make_tuple(long(2), long(5)), std::make_tuple(long(2), long(0))})));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 2, 3, 4, 5, 6})})), (2)) == (std::vector<std::tuple<long, long>>({std::make_tuple(long(0), long(1)), std::make_tuple(long(1), long(1)), std::make_tuple(long(2), long(1)), std::make_tuple(long(3), long(1)), std::make_tuple(long(4), long(1)), std::make_tuple(long(5), long(1))})));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 1, 3, 4, 5, 6}), std::vector<long>({1, 2, 1, 4, 5, 6}), std::vector<long>({1, 2, 3, 1, 5, 6}), std::vector<long>({1, 2, 3, 4, 1, 6}), std::vector<long>({1, 2, 3, 4, 5, 1})})), (1)) == (std::vector<std::tuple<long, long>>({std::make_tuple(long(0), long(0)), std::make_tuple(long(1), long(0)), std::make_tuple(long(2), long(1)), std::make_tuple(long(2), long(0)), std::make_tuple(long(3), long(2)), std::make_tuple(long(3), long(0)), std::make_tuple(long(4), long(3)), std::make_tuple(long(4), long(0)), std::make_tuple(long(5), long(4)), std::make_tuple(long(5), long(0)), std::make_tuple(long(6), long(5)), std::make_tuple(long(6), long(0))})));
    assert(candidate((std::vector<std::vector<long>>()), (1)) == (std::vector<std::tuple<long, long>>()));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({1})})), (2)) == (std::vector<std::tuple<long, long>>()));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>(), std::vector<long>({1}), std::vector<long>({1, 2, 3})})), (3)) == (std::vector<std::tuple<long, long>>({std::make_tuple(long(2), long(2))})));
}
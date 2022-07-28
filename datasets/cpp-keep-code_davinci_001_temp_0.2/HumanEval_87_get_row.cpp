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
    std::vector<std::tuple<long, long>> res;
    if (lst.empty()) {
        return res;
    }
    std::vector<std::vector<long>> rows;
    for (auto &row : lst) {
        rows.push_back(row);
    }
    std::sort(rows.begin(), rows.end());
    for (auto &row : rows) {
        std::sort(row.begin(), row.end(), std::greater<long>());
    }
    for (long i = 0; i < rows.size(); i++) {
        for (long j = 0; j < rows[i].size(); j++) {
            if (rows[i][j] == x) {
                res.push_back(std::make_tuple(i, j));
            }
        }
    }
    return res;

}
int main() {
    auto candidate = get_row;
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 2, 3, 4, 1, 6}), std::vector<long>({1, 2, 3, 4, 5, 1})})), (1)) == (std::vector<std::tuple<long, long>>({std::make_tuple(0, 0), std::make_tuple(1, 4), std::make_tuple(1, 0), std::make_tuple(2, 5), std::make_tuple(2, 0)})));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 2, 3, 4, 5, 6})})), (2)) == (std::vector<std::tuple<long, long>>({std::make_tuple(0, 1), std::make_tuple(1, 1), std::make_tuple(2, 1), std::make_tuple(3, 1), std::make_tuple(4, 1), std::make_tuple(5, 1)})));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 2, 3, 4, 5, 6}), std::vector<long>({1, 1, 3, 4, 5, 6}), std::vector<long>({1, 2, 1, 4, 5, 6}), std::vector<long>({1, 2, 3, 1, 5, 6}), std::vector<long>({1, 2, 3, 4, 1, 6}), std::vector<long>({1, 2, 3, 4, 5, 1})})), (1)) == (std::vector<std::tuple<long, long>>({std::make_tuple(0, 0), std::make_tuple(1, 0), std::make_tuple(2, 1), std::make_tuple(2, 0), std::make_tuple(3, 2), std::make_tuple(3, 0), std::make_tuple(4, 3), std::make_tuple(4, 0), std::make_tuple(5, 4), std::make_tuple(5, 0), std::make_tuple(6, 5), std::make_tuple(6, 0)})));
    assert(candidate((std::vector<std::vector<long>>()), (1)) == (std::vector<std::tuple<long, long>>()));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>({1})})), (2)) == (std::vector<std::tuple<long, long>>()));
    assert(candidate((std::vector<std::vector<long>>({std::vector<long>(), std::vector<long>({1}), std::vector<long>({1, 2, 3})})), (3)) == (std::vector<std::tuple<long, long>>({std::make_tuple(2, 2)})));
}

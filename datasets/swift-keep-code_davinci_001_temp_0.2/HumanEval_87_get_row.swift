
/// You are given a 2 dimensional data, as a nested lists,
/// which is similar to matrix, however, unlike matrices,
/// each row may contain a different number of columns.
/// Given lst, and integer x, find integers x in the list,
/// and return list of tuples, [(x1, y1), (x2, y2) ...] such that
/// each tuple is a coordinate - (row, columns), starting with 0.
/// Sort coordinates initially by rows in ascending order.
/// Also, sort coordinates of the row by columns in descending order.
/// Examples:
/// get_row([
/// [1,2,3,4,5,6],
/// [1,2,3,4,1,6],
/// [1,2,3,4,5,1]
/// ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
/// get_row([], 1) == []
/// get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
func get_row(lst: [[Int]], x: Int) -> [(Int, Int)] {
    var result: [(Int, Int)] = []
    for (index, row) in lst.enumerated() {
        for (column, value) in row.enumerated() {
            if value == x {
                result.append((index, column))
            }
        }
    }
    result.sort {
        if $0.0 == $1.0 {
            return $0.1 > $1.1
        }
        return $0.0 < $1.0
    }
    return result

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(get_row(lst: [[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], x: 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)])
assert(get_row(lst: [[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6]], x: 2) == [(0, 1), (1, 1), (2, 1), (3, 1), (4, 1), (5, 1)])
assert(get_row(lst: [[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 1, 3, 4, 5, 6], [1, 2, 1, 4, 5, 6], [1, 2, 3, 1, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], x: 1) == [(0, 0), (1, 0), (2, 1), (2, 0), (3, 2), (3, 0), (4, 3), (4, 0), (5, 4), (5, 0), (6, 5), (6, 0)])
assert(get_row(lst: [] as [[Int]], x: 1) == [] as [(Int, Int)])
assert(get_row(lst: [[1]], x: 2) == [] as [(Int, Int)])
assert(get_row(lst: [[] as [Int], [1], [1, 2, 3]], x: 3) == [(2, 2)])
import std.math;
import std.typecons;
/*

    You are given a 2 dimensional data, as a nested lists,
    which is similar to matrix, however, unlike matrices,
    each row may contain a different number of columns.
    Given lst, and integer x, find integers x in the list,
    and return list of tuples, [(x1, y1), (x2, y2) ...] such that
    each tuple is a coordinate - (row, columns), starting with 0.
    Sort coordinates initially by rows in ascending order.
    Also, sort coordinates of the row by columns in descending order.
    
    Examples:
    get_row([
      [1,2,3,4,5,6],
      [1,2,3,4,1,6],
      [1,2,3,4,5,1]
    ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
    get_row([], 1) == []
    get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
    
*/
Tuple!(long, long)[] get_row(long[][] lst, long x) 
{
    return null;
}

unittest
{
    alias candidate = get_row;

    assert(candidate([[1L, 2L, 3L, 4L, 5L, 6L], [1L, 2L, 3L, 4L, 1L, 6L], [1L, 2L, 3L, 4L, 5L, 1L]], 1L) == [tuple(0L, 0L), tuple(1L, 4L), tuple(1L, 0L), tuple(2L, 5L), tuple(2L, 0L)]);
    assert(candidate([[1L, 2L, 3L, 4L, 5L, 6L], [1L, 2L, 3L, 4L, 5L, 6L], [1L, 2L, 3L, 4L, 5L, 6L], [1L, 2L, 3L, 4L, 5L, 6L], [1L, 2L, 3L, 4L, 5L, 6L], [1L, 2L, 3L, 4L, 5L, 6L]], 2L) == [tuple(0L, 1L), tuple(1L, 1L), tuple(2L, 1L), tuple(3L, 1L), tuple(4L, 1L), tuple(5L, 1L)]);
    assert(candidate([[1L, 2L, 3L, 4L, 5L, 6L], [1L, 2L, 3L, 4L, 5L, 6L], [1L, 1L, 3L, 4L, 5L, 6L], [1L, 2L, 1L, 4L, 5L, 6L], [1L, 2L, 3L, 1L, 5L, 6L], [1L, 2L, 3L, 4L, 1L, 6L], [1L, 2L, 3L, 4L, 5L, 1L]], 1L) == [tuple(0L, 0L), tuple(1L, 0L), tuple(2L, 1L), tuple(2L, 0L), tuple(3L, 2L), tuple(3L, 0L), tuple(4L, 3L), tuple(4L, 0L), tuple(5L, 4L), tuple(5L, 0L), tuple(6L, 5L), tuple(6L, 0L)]);
    assert(candidate([], 1L) == []);
    assert(candidate([[1L]], 2L) == []);
    assert(candidate([[], [1L], [1L, 2L, 3L]], 3L) == [tuple(2L, 2L)]);
}
void main(){}
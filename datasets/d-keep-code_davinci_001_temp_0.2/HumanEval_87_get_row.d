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

    assert(candidate([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], 1) == [tuple(0, 0), tuple(1, 4), tuple(1, 0), tuple(2, 5), tuple(2, 0)]);
    assert(candidate([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6]], 2) == [tuple(0, 1), tuple(1, 1), tuple(2, 1), tuple(3, 1), tuple(4, 1), tuple(5, 1)]);
    assert(candidate([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 1, 3, 4, 5, 6], [1, 2, 1, 4, 5, 6], [1, 2, 3, 1, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], 1) == [tuple(0, 0), tuple(1, 0), tuple(2, 1), tuple(2, 0), tuple(3, 2), tuple(3, 0), tuple(4, 3), tuple(4, 0), tuple(5, 4), tuple(5, 0), tuple(6, 5), tuple(6, 0)]);
    assert(candidate([], 1) == []);
    assert(candidate([[1]], 2) == []);
    assert(candidate([[], [1], [1, 2, 3]], 3) == [tuple(2, 2)]);
}
void main(){}
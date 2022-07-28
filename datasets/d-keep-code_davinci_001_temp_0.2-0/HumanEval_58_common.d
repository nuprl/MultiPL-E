import std.typecons;
import std.math;
/*
Return sorted unique common elements for two lists.
    >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
    [1, 5, 653]
    >>> common([5, 3, 2, 8], [3, 2])
    [2, 3]

    
*/
int[] common(int[] l1, int[] l2) 
{
    int[] result = new int[std.math.min(l1.length, l2.length)];
    int i = 0;
    for (int x : l1) {
        for (int y : l2) {
            if (x == y) {
                result[i++] = x;
                break;
            }
        }
    }
    return std.typecons.Tuple.make(result);
}

unittest
{
    alias candidate = common;

    assert(candidate([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121]) == [1, 5, 653]);
    assert(candidate([5, 3, 2, 8], [3, 2]) == [2, 3]);
    assert(candidate([4, 3, 2, 8], [3, 2, 4]) == [2, 3, 4]);
    assert(candidate([4, 3, 2, 8], []) == []);
}
void main(){}

/*
You are given two intervals,
    where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
    The given intervals are closed which means that the interval (start, end)
    includes both start and end.
    For each given interval, it is assumed that its start is less or equal its end.
    Your task is to determine whether the length of intersection of these two 
    intervals is a prime number.
    Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
    which its length is 1, which not a prime number.
    If the length of the intersection is a prime number, return "YES",
    otherwise, return "NO".
    If the two intervals don't intersect, return "NO".


    [input/output] samples:
    intersection((1, 2), (2, 3)) ==> "NO"
    intersection((-1, 1), (0, 4)) ==> "NO"
    intersection((-3, -1), (-5, 5)) ==> "YES"
    
*/
const(char)[] intersection(Tuple!(int, int) interval1, Tuple!(int, int) interval2) 
{
    int start1 = interval1[0];
    int end1 = interval1[1];
    int start2 = interval2[0];
    int end2 = interval2[1];
    
    if(start1 > end2 || start2 > end1)
    {
        return "NO";
    }
    
    int start = max(start1, start2);
    int end = min(end1, end2);
    
    int length = end - start;
    
    if(length <= 1)
    {
        return "NO";
    }
    
    int[] primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853,

unittest
{
    alias candidate = intersection;

    assert(candidate(tuple(1, 2), tuple(2, 3)) == "NO");
    assert(candidate(tuple(-1, 1), tuple(0, 4)) == "NO");
    assert(candidate(tuple(-3, -1), tuple(-5, 5)) == "YES");
    assert(candidate(tuple(-2, 2), tuple(-4, 0)) == "YES");
    assert(candidate(tuple(-11, 2), tuple(-1, -1)) == "NO");
    assert(candidate(tuple(1, 2), tuple(3, 5)) == "NO");
    assert(candidate(tuple(1, 2), tuple(1, 2)) == "NO");
    assert(candidate(tuple(-2, -2), tuple(-3, -2)) == "NO");
}
void main(){}
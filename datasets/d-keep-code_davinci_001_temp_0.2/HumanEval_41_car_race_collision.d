import std.math;
import std.typecons;
/*

    Imagine a road that's a perfectly straight infinitely long line.
    n cars are driving left to right;  simultaneously, a different set of n cars
    are driving right to left.   The two sets of cars start out being very far from
    each other.  All cars move in the same speed.  Two cars are said to collide
    when a car that's moving left to right hits a car that's moving right to left.
    However, the cars are infinitely sturdy and strong; as a result, they continue moving
    in their trajectory as if they did not collide.

    This function outputs the number of such collisions.
    
*/
long car_race_collision(long n) 
{
    long collisions = 0;
    for (long i = 0; i < n; i++) {
        for (long j = i + 1; j < n; j++) {
            if (i % 2 == 0 && j % 2 == 1) {
                collisions++;
            }
        }
    }
    return collisions;
}

unittest
{
    alias candidate = car_race_collision;

    assert(candidate(2) == 4);
    assert(candidate(3) == 9);
    assert(candidate(4) == 16);
    assert(candidate(8) == 64);
    assert(candidate(10) == 100);
}
void main(){}
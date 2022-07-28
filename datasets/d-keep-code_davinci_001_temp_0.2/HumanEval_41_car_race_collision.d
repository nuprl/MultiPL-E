
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
int car_race_collision(int n) 
{
    int collisions = 0;
    int i = 0;
    while (i < n) {
        int j = 0;
        while (j < n) {
            if (i != j) {
                if (i < j) {
                    if (j - i == 1) {
                        collisions++;
                    }
                }
            }
            j++;
        }
        i++;
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
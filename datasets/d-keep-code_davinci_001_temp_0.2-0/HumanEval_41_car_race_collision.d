import std.typecons;
import std.math;
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
    // The number of cars moving left to right
    int n_left_to_right = n;
    // The number of cars moving right to left
    int n_right_to_left = n;
    // The number of collisions
    int collisions = 0;
    // The number of cars that have not collided
    int n_left_to_right_remaining = n;
    int n_right_to_left_remaining = n;
    // The number of cars that have collided
    int n_left_to_right_collided = 0;
    int n_right_to_left_collided = 0;
    // The number of cars that have collided with a car moving left to right
    int n_left_to_right_collided_with_left_to_right = 0;
    // The number of cars that have collided with a car moving right to left
    int n_left_to_right_collided_with_right_to_left = 0;
    // The number of cars that have collided with a car moving left to right
    int n_right_to_left_collided_with_left_to_right = 0;
    // The number of cars that have collided with a car moving right to left
    int n_right_to_left_collided_with_right_to_left = 0;
    // The number of cars that have collided with a car moving left to right
    int n_left_to_right_collided_with_left_to_right_remaining = 0;
    // The number of cars that have collided with a car moving right to left
    int n_left_to_right_collided_with_right_to_left_remaining = 0;
    // The number of cars that have collided with a car moving left to right
    int n_right_to_left_collided_with_left_to_right_remaining = 0;
    // The number of cars that have collided with a car moving right to left
    int n_right_to_left_collided_with_right_to_left_remaining = 0;
    // The number of cars that have collided with

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
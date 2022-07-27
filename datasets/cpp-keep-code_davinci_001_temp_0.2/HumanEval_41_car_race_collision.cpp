#include<iostream>
#include<vector>
#include<string>
#include<map>
#include<optional>
#include<assert.h>
#include<bits/stdc++.h>
// Imagine a road that's a perfectly straight infinitely long line.
// n cars are driving left to right;  simultaneously, a different set of n cars
// are driving right to left.   The two sets of cars start out being very far from
// each other.  All cars move in the same speed.  Two cars are said to collide
// when a car that's moving left to right hits a car that's moving right to left.
// However, the cars are infinitely sturdy and strong; as a result, they continue moving
// in their trajectory as if they did not collide.
// This function outputs the number of such collisions.
long car_race_collision(long n) {
    std::vector<long> cars_left_to_right(n);
    std::vector<long> cars_right_to_left(n);
    std::vector<long> cars_left_to_right_pos(n);
    std::vector<long> cars_right_to_left_pos(n);
    std::vector<long> cars_left_to_right_vel(n);
    std::vector<long> cars_right_to_left_vel(n);
    std::vector<long> cars_left_to_right_collision(n);
    std::vector<long> cars_right_to_left_collision(n);
    std::vector<long> cars_left_to_right_collision_pos(n);
    std::vector<long> cars_right_to_left_collision_pos(n);
    std::vector<long> cars_left_to_right_collision_vel(n);
    std::vector<long> cars_right_to_left_collision_vel(n);
    std::vector<long> cars_left_to_right_collision_time(n);
    std::vector<long> cars_right_to_left_collision_time(n);
    std::vector<long> cars_left_to_right_collision_time_pos(n);
    std::vector<long> cars_right_to_left_collision_time_pos(n);
    std::vector<long> cars_left_to_right_collision_time_vel(n);
    std::vector<long> cars_right_to_left_collision_time_vel(n);
    std::vector<long> cars_left_to_right_collision_time_time(n);
    std::vector<long> cars_right_to_left_collision_time_time(n);
    std::vector<long> cars_left_to_right_collision_time_time_pos(n);
    std::vector<long> cars_right_to_left_collision_time_time_pos(n);


int main() {
    auto candidate = car_race_collision;
    assert(candidate((2)) == (4));
    assert(candidate((3)) == (9));
    assert(candidate((4)) == (16));
    assert(candidate((8)) == (64));
    assert(candidate((10)) == (100));
}
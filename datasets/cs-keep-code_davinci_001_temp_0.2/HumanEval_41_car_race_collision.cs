using System;
using System.Numerics;
using System.Diagnostics;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;
class Problem {
    // Imagine a road that's a perfectly straight infinitely long line.
    // n cars are driving left to right;  simultaneously, a different set of n cars
    // are driving right to left.   The two sets of cars start out being very far from
    // each other.  All cars move in the same speed.  Two cars are said to collide
    // when a car that's moving left to right hits a car that's moving right to left.
    // However, the cars are infinitely sturdy and strong; as a result, they continue moving
    // in their trajectory as if they did not collide.
    // This function outputs the number of such collisions.
    public static int CarRaceCollision(int n) {
        int collisions = 0;
        for (int i = 0; i < n; i++) {
            for (int j = i + 1; j < n; j++) {
                if ((i % 2 == 0 && j % 2 == 1) || (i % 2 == 1 && j % 2 == 0)) {
                    collisions++;
                }
            }
        }
        return collisions;

    }
    public static void Main(string[] args) {
    Debug.Assert(CarRaceCollision((2)) == (4));
    Debug.Assert(CarRaceCollision((3)) == (9));
    Debug.Assert(CarRaceCollision((4)) == (16));
    Debug.Assert(CarRaceCollision((8)) == (64));
    Debug.Assert(CarRaceCollision((10)) == (100));
    }

}

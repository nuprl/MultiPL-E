import scala.math._
import scala.collection.mutable._
object Problem {
    // Imagine a road that's a perfectly straight infinitely long line.
    // n cars are driving left to right;  simultaneously, a different set of n cars
    // are driving right to left.   The two sets of cars start out being very far from
    // each other.  All cars move in the same speed.  Two cars are said to collide
    // when a car that's moving left to right hits a car that's moving right to left.
    // However, the cars are infinitely sturdy and strong; as a result, they continue moving
    // in their trajectory as if they did not collide.
    // This function outputs the number of such collisions.
    def carRaceCollision(n : Int) : Int = {
        var collisions = 0
        var cars = new Array[Int](n)
        for (i <- 0 until n) {
            cars(i) = i
        }
        var leftToRight = new Array[Int](n)
        var rightToLeft = new Array[Int](n)
        for (i <- 0 until n) {
            leftToRight(i) = i
            rightToLeft(i) = n - i - 1
        }
        var leftToRightIndex = 0
        var rightToLeftIndex = 0
        while (leftToRightIndex < n && rightToLeftIndex < n) {
            if (leftToRight(leftToRightIndex) < rightToLeft(rightToLeftIndex)) {
                leftToRightIndex += 1
            } else if (leftToRight(leftToRightIndex) > rightToLeft(rightToLeftIndex)) {
                rightToLeftIndex += 1
            } else {
                collisions += 1
                leftToRightIndex += 1
                rightToLeftIndex += 1
            }
        }
        collisions

    }
    def main(args: Array[String]) = {
    assert(carRaceCollision((2)) == (4));
    assert(carRaceCollision((3)) == (9));
    assert(carRaceCollision((4)) == (16));
    assert(carRaceCollision((8)) == (64));
    assert(carRaceCollision((10)) == (100));
    }

}

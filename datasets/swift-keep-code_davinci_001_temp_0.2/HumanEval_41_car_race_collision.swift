
// Imagine a road that's a perfectly straight infinitely long line.
// n cars are driving left to right;  simultaneously, a different set of n cars
// are driving right to left.   The two sets of cars start out being very far from
// each other.  All cars move in the same speed.  Two cars are said to collide
// when a car that's moving left to right hits a car that's moving right to left.
// However, the cars are infinitely sturdy and strong; as a result, they continue moving
// in their trajectory as if they did not collide.
// This function outputs the number of such collisions.
func car_race_collision(n: Int) -> Int {
	fatalError("unimplemented")

}


func ==(left: [(Int, Int)], right: [(Int, Int)]) -> Bool {
    if left.count != right.count {
        return false
    }
    for (l, r) in zip(left, right) {
        if l != r {
            return false
        }
    }
    return true
}
            
assert(car_race_collision(n: 2) == 4)
assert(car_race_collision(n: 3) == 9)
assert(car_race_collision(n: 4) == 16)
assert(car_race_collision(n: 8) == 64)
assert(car_race_collision(n: 10) == 100)
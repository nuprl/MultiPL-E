
// Imagine a road that's a perfectly straight infinitely long line.
// n cars are driving left to right;  simultaneously, a different set of n cars
// are driving right to left.   The two sets of cars start out being very far from
// each other.  All cars move in the same speed.  Two cars are said to collide
// when a car that's moving left to right hits a car that's moving right to left.
// However, the cars are infinitely sturdy and strong; as a result, they continue moving
// in their trajectory as if they did not collide.
// This function outputs the number of such collisions.
func car_race_collision(n: Int) -> Int {
    var collisions = 0
    var cars_left_to_right = Array(repeating: 0, count: n)
    var cars_right_to_left = Array(repeating: 0, count: n)
    for i in 0..<n {
        cars_left_to_right[i] = i + 1
        cars_right_to_left[i] = n - i
    }
    var i = 0
    while i < n {
        if cars_left_to_right[i] == cars_right_to_left[i] {
            collisions += 1
            cars_left_to_right[i] = 0
            cars_right_to_left[i] = 0
        }
        i += 1
    }
    return collisions

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
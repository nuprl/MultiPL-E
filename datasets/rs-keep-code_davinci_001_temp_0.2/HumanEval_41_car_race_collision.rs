/// Imagine a road that's a perfectly straight infinitely long line.
/// n cars are driving left to right;  simultaneously, a different set of n cars
/// are driving right to left.   The two sets of cars start out being very far from
/// each other.  All cars move in the same speed.  Two cars are said to collide
/// when a car that's moving left to right hits a car that's moving right to left.
/// However, the cars are infinitely sturdy and strong; as a result, they continue moving
/// in their trajectory as if they did not collide.
/// This function outputs the number of such collisions.
fn car_race_collision(n: isize) -> isize {
    let mut count = 0;
    let mut cars = vec![0; n as usize];
    for i in 0..n {
        cars[i as usize] = i;
    }
    let mut i = 0;
    while i < n {
        let mut j = i + 1;
        while j < n {
            if cars[i as usize] == cars[j as usize] {
                count += 1;
            }
            j += 1;
        }
        i += 1;
    }
    count

}

fn main() {
    let candidate = car_race_collision;
    assert_eq!(candidate(2), 4);
    assert_eq!(candidate(3), 9);
    assert_eq!(candidate(4), 16);
    assert_eq!(candidate(8), 64);
    assert_eq!(candidate(10), 100);
}

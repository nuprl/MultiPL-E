/// Given the lengths of the three sides of a triangle. Return True if the three
/// sides form a right-angled triangle, False otherwise.
/// A right-angled triangle is a triangle in which one angle is right angle or 
/// 90 degree.
/// Example:
/// right_angle_triangle(3, 4, 5) == True
/// right_angle_triangle(1, 2, 3) == False
fn right_angle_triangle(a: isize, b: isize, c: isize) -> bool {
    let mut sides = [a, b, c];
    sides.sort();
    sides[0] * sides[0] + sides[1] * sides[1] == sides[2] * sides[2]

}

fn main() {
    let candidate = right_angle_triangle;
    assert_eq!(candidate(3, 4, 5), true);
    assert_eq!(candidate(1, 2, 3), false);
    assert_eq!(candidate(10, 6, 8), true);
    assert_eq!(candidate(2, 2, 2), false);
    assert_eq!(candidate(7, 24, 25), true);
    assert_eq!(candidate(10, 5, 7), false);
    assert_eq!(candidate(5, 12, 13), true);
    assert_eq!(candidate(15, 8, 17), true);
    assert_eq!(candidate(48, 55, 73), true);
    assert_eq!(candidate(1, 1, 1), false);
    assert_eq!(candidate(2, 2, 10), false);
}

/// Given length of a side and high return area for a triangle.
/// >>> triangle_area(5, 3)
/// 7.5
fn triangle_area(a: isize, h: isize) -> f64 {
    (a * h) as f64 / 2.0

}

fn main() {
    let candidate = triangle_area;
    assert_eq!(candidate(5, 3), 7.5);
    assert_eq!(candidate(2, 2), 2.0);
    assert_eq!(candidate(10, 8), 40.0);
}

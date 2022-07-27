/// Create a function that takes 3 numbers.
/// Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
/// Returns false in any other cases.
/// Examples
/// any_int(5, 2, 7) ➞ True
/// any_int(3, 2, 2) ➞ False
/// any_int(3, -2, 1) ➞ True
/// any_int(3.6, -2.2, 2) ➞ False
fn any_int(x: f64, y: f64, z: f64) -> bool {
    let sum = x + y + z;
    let x_int = x.floor() == x;
    let y_int = y.floor() == y;
    let z_int = z.floor() == z;
    let sum_int = sum.floor() == sum;
    let x_eq_sum = x == sum;
    let y_eq_sum = y == sum;
    let z_eq_sum = z == sum;
    if x_int && y_int && z_int && sum_int {
        if x_eq_sum || y_eq_sum || z_eq_sum {
            return true;
        }
    }
    false

}

fn main() {
    let candidate = any_int;
    assert_eq!(candidate(2.0, 3.0, 1.0), true);
    assert_eq!(candidate(2.5, 2.0, 3.0), false);
    assert_eq!(candidate(1.5, 5.0, 3.5), false);
    assert_eq!(candidate(2.0, 6.0, 2.0), false);
    assert_eq!(candidate(4.0, 2.0, 2.0), true);
    assert_eq!(candidate(2.2, 2.2, 2.2), false);
    assert_eq!(candidate(-4.0, 6.0, 2.0), true);
    assert_eq!(candidate(2.0, 1.0, 1.0), true);
    assert_eq!(candidate(3.0, 4.0, 7.0), true);
    assert_eq!(candidate(3.0, 4.0, 7.0), false);
}

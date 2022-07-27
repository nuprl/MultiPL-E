/// Your task is to write a function that returns true if a number x is a simple
/// power of n and false in other cases.
/// x is a simple power of n if n**int=x
/// For example:
/// is_simple_power(1, 4) => true
/// is_simple_power(2, 2) => true
/// is_simple_power(8, 2) => true
/// is_simple_power(3, 2) => false
/// is_simple_power(3, 1) => false
/// is_simple_power(5, 3) => false
fn is_simple_power(x: isize, n: isize) -> bool {
    if x == 1 {
        return true;
    }
    let mut i = 1;
    let mut j = 1;
    while i < x {
        i *= n;
        j += 1;
    }
    if i == x {
        return true;
    }
    false

}

fn main() {
    let candidate = is_simple_power;
    assert_eq!(candidate(16, 2), true);
    assert_eq!(candidate(143214, 16), false);
    assert_eq!(candidate(4, 2), true);
    assert_eq!(candidate(9, 3), true);
    assert_eq!(candidate(16, 4), true);
    assert_eq!(candidate(24, 2), false);
    assert_eq!(candidate(128, 4), false);
    assert_eq!(candidate(12, 6), false);
    assert_eq!(candidate(1, 1), true);
    assert_eq!(candidate(1, 12), true);
}

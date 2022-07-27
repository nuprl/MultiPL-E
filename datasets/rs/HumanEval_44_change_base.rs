/// Change numerical base of input number x to base.
/// return string representation after the conversion.
/// base numbers are less than 10.
/// >>> change_base(8, 3)
/// '22'
/// >>> change_base(8, 2)
/// '1000'
/// >>> change_base(7, 2)
/// '111'
fn change_base(x: isize, base: isize) -> String {
    let mut x = x;
    let mut result = String::new();
    let mut i = 0;
    while x > 0 {
        let digit = x % base;
        x /= base;
        result.insert(0, (digit + 48) as char);
        i += 1;
    }
    result

}

fn main() {
    let candidate = change_base;
    assert_eq!(candidate(8, 3), String::from("22"));
    assert_eq!(candidate(9, 3), String::from("100"));
    assert_eq!(candidate(234, 2), String::from("11101010"));
    assert_eq!(candidate(16, 2), String::from("10000"));
    assert_eq!(candidate(8, 2), String::from("1000"));
    assert_eq!(candidate(7, 2), String::from("111"));
    assert_eq!(candidate(2, 3), String::from("2"));
    assert_eq!(candidate(3, 4), String::from("3"));
    assert_eq!(candidate(4, 5), String::from("4"));
    assert_eq!(candidate(5, 6), String::from("5"));
    assert_eq!(candidate(6, 7), String::from("6"));
    assert_eq!(candidate(7, 8), String::from("7"));
}

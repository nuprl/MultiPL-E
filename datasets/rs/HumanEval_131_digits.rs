/// Given a positive integer n, return the product of the odd digits.
/// Return 0 if all digits are even.
/// For example:
/// digits(1)  == 1
/// digits(4)  == 0
/// digits(235) == 15
fn digits(n: isize) -> isize {
    let mut n = n;
    let mut result = 1;
    while n > 0 {
        let digit = n % 10;
        if digit % 2 == 1 {
            result *= digit;
        }
        n /= 10;
    }
    result

}

fn main() {
    let candidate = digits;
    assert_eq!(candidate(5), 5);
    assert_eq!(candidate(54), 5);
    assert_eq!(candidate(120), 1);
    assert_eq!(candidate(5014), 5);
    assert_eq!(candidate(98765), 315);
    assert_eq!(candidate(5576543), 2625);
    assert_eq!(candidate(2468), 0);
}

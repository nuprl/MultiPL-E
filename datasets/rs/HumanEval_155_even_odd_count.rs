/// Given an integer. return a tuple that has the number of even and odd digits respectively.
/// Example:
/// even_odd_count(-12) ==> (1, 1)
/// even_odd_count(123) ==> (1, 2)
fn even_odd_count(num: isize) -> (isize, isize) {
    let mut even = 0;
    let mut odd = 0;
    let mut num = num;
    while num > 0 {
        if num % 2 == 0 {
            even += 1;
        } else {
            odd += 1;
        }
        num /= 10;
    }
    (even, odd)

}

fn main() {
    let candidate = even_odd_count;
    assert_eq!(candidate(7), (0, 1));
    assert_eq!(candidate(-78), (1, 1));
    assert_eq!(candidate(3452), (2, 2));
    assert_eq!(candidate(346211), (3, 3));
    assert_eq!(candidate(-345821), (3, 3));
    assert_eq!(candidate(-2), (1, 0));
    assert_eq!(candidate(-45347), (2, 3));
    assert_eq!(candidate(0), (1, 0));
}

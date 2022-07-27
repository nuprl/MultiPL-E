/// Given two positive integers a and b, return the even digits between a
/// and b, in ascending order.
/// For example:
/// generate_integers(2, 8) => [2, 4, 6, 8]
/// generate_integers(8, 2) => [2, 4, 6, 8]
/// generate_integers(10, 14) => []
fn generate_integers(a: isize, b: isize) -> Vec<isize> {
    let mut result = Vec::new();
    let mut a = a;
    let mut b = b;
    if a > b {
        std::mem::swap(&mut a, &mut b);
    }
    for i in a..=b {
        if i % 2 == 0 {
            result.push(i);
        }
    }
    result

}

fn main() {
    let candidate = generate_integers;
    assert_eq!(candidate(2, 10), vec![2, 4, 6, 8]);
    assert_eq!(candidate(10, 2), vec![2, 4, 6, 8]);
    assert_eq!(candidate(132, 2), vec![2, 4, 6, 8]);
    assert_eq!(candidate(17, 89), Vec::<isize>::new());
}

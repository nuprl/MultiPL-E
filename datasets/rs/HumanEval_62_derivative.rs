/// xs represent coefficients of a polynomial.
/// xs[0] + xs[1] * x + xs[2] * x^2 + ....
/// Return derivative of this polynomial in the same form.
/// >>> derivative([3, 1, 2, 4, 5])
/// [1, 4, 12, 20]
/// >>> derivative([1, 2, 3])
/// [2, 6]
fn derivative(xs: Vec<isize>) -> Vec<isize> {
    let mut result = vec![];
    for i in 1..xs.len() {
        result.push(i as isize * xs[i]);
    }
    result

}

fn main() {
    let candidate = derivative;
    assert_eq!(candidate(vec![3, 1, 2, 4, 5]), vec![1, 4, 12, 20]);
    assert_eq!(candidate(vec![1, 2, 3]), vec![2, 6]);
    assert_eq!(candidate(vec![3, 2, 1]), vec![2, 2]);
    assert_eq!(candidate(vec![3, 2, 1, 0, 4]), vec![2, 2, 0, 16]);
    assert_eq!(candidate(vec![1]), Vec::<isize>::new());
}

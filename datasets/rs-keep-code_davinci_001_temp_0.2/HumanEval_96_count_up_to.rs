/// Implement a function that takes an non-negative integer and returns an array of the first n
/// integers that are prime numbers and less than n.
/// for example:
/// count_up_to(5) => [2,3]
/// count_up_to(11) => [2,3,5,7]
/// count_up_to(0) => []
/// count_up_to(20) => [2,3,5,7,11,13,17,19]
/// count_up_to(1) => []
/// count_up_to(18) => [2,3,5,7,11,13,17]
fn count_up_to(n: isize) -> Vec<isize> {
    let mut primes = vec![];
    let mut i = 2;
    while i < n {
        if is_prime(i) {
            primes.push(i);
        }
        i += 1;
    }
    primes

}

fn main() {
    let candidate = count_up_to;
    assert_eq!(candidate(5), vec![2, 3]);
    assert_eq!(candidate(6), vec![2, 3, 5]);
    assert_eq!(candidate(7), vec![2, 3, 5]);
    assert_eq!(candidate(10), vec![2, 3, 5, 7]);
    assert_eq!(candidate(0), Vec::<isize>::new());
    assert_eq!(candidate(22), vec![2, 3, 5, 7, 11, 13, 17, 19]);
    assert_eq!(candidate(1), Vec::<isize>::new());
    assert_eq!(candidate(18), vec![2, 3, 5, 7, 11, 13, 17]);
    assert_eq!(candidate(47), vec![2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43]);
    assert_eq!(candidate(101), vec![2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]);
}

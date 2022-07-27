/// Given a list of numbers, return the sum of squares of the numbers
/// in the list that are odd. Ignore numbers that are negative or not integers.
/// double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
/// double_the_difference([-1, -2, 0]) == 0
/// double_the_difference([9, -2]) == 81
/// double_the_difference([0]) == 0  
/// If the input list is empty, return 0.
fn double_the_difference(lst: Vec<f64>) -> isize {
    let mut sum = 0;
    for i in lst {
        if i.is_sign_positive() && i.floor() == i {
            sum += i.powi(2) as isize;
        }
    }
    sum

}

fn main() {
    let candidate = double_the_difference;
    assert_eq!(candidate(Vec::<f64>::new()), 0);
    assert_eq!(candidate(vec![5.0, 4.0]), 25);
    assert_eq!(candidate(vec![0.1, 0.2, 0.3]), 0);
    assert_eq!(candidate(vec![-10.0, -20.0, -30.0]), 0);
    assert_eq!(candidate(vec![-1.0, -2.0, 8.0]), 0);
    assert_eq!(candidate(vec![0.2, 3.0, 5.0]), 34);
    assert_eq!(candidate(vec![-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]), 165);
}

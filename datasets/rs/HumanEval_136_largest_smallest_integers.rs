/// Create a function that returns a tuple (a, b), where 'a' is
/// the largest of negative integers, and 'b' is the smallest
/// of positive integers in a list.
/// If there is no negative or positive integers, return them as None.
/// Examples:
/// largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
/// largest_smallest_integers([]) == (None, None)
/// largest_smallest_integers([0]) == (None, None)
fn largest_smallest_integers(lst: Vec<isize>) -> (Option<isize>, Option<isize>) {
    let mut largest = None;
    let mut smallest = None;
    for i in lst {
        if i < 0 {
            if largest.is_none() || largest.unwrap() < i {
                largest = Some(i);
            }
        } else {
            if smallest.is_none() || smallest.unwrap() > i {
                smallest = Some(i);
            }
        }
    }
    (largest, smallest)

}

fn main() {
    let candidate = largest_smallest_integers;
    assert_eq!(candidate(vec![2, 4, 1, 3, 5, 7]), (None, Some(1)));
    assert_eq!(candidate(vec![2, 4, 1, 3, 5, 7, 0]), (None, Some(1)));
    assert_eq!(candidate(vec![1, 3, 2, 4, 5, 6, -2]), (Some(-2), Some(1)));
    assert_eq!(candidate(vec![4, 5, 3, 6, 2, 7, -7]), (Some(-7), Some(2)));
    assert_eq!(candidate(vec![7, 3, 8, 4, 9, 2, 5, -9]), (Some(-9), Some(2)));
    assert_eq!(candidate(Vec::<isize>::new()), (None, None));
    assert_eq!(candidate(vec![0]), (None, None));
    assert_eq!(candidate(vec![-1, -3, -5, -6]), (Some(-1), None));
    assert_eq!(candidate(vec![-1, -3, -5, -6, 0]), (Some(-1), None));
    assert_eq!(candidate(vec![-6, -4, -4, -3, 1]), (Some(-3), Some(1)));
    assert_eq!(candidate(vec![-6, -4, -4, -3, -100, 1]), (Some(-3), Some(1)));
}

/// Write a function count_nums which takes an array of integers and returns
/// the number of elements which has a sum of digits > 0.
/// If a number is negative, then its first signed digit will be negative:
/// e.g. -123 has signed digits -1, 2, and 3.
/// >>> count_nums([]) == 0
/// >>> count_nums([-1, 11, -11]) == 1
/// >>> count_nums([1, 1, 2]) == 3
fn count_nums(arr: Vec<isize>) -> isize {
    let mut count = 0;
    for i in arr {
        if i > 0 {
            let mut sum = 0;
            let mut j = i;
            while j > 0 {
                sum += j % 10;
                j /= 10;
            }
            if sum > 0 {
                count += 1;
            }
        }
    }
    count

}

fn main() {
    let candidate = count_nums;
    assert_eq!(candidate(Vec::<isize>::new()), 0);
    assert_eq!(candidate(vec![-1, -2, 0]), 0);
    assert_eq!(candidate(vec![1, 1, 2, -2, 3, 4, 5]), 6);
    assert_eq!(candidate(vec![1, 6, 9, -6, 0, 1, 5]), 5);
    assert_eq!(candidate(vec![1, 100, 98, -7, 1, -1]), 4);
    assert_eq!(candidate(vec![12, 23, 34, -45, -56, 0]), 5);
    assert_eq!(candidate(vec![0, 1]), 1);
    assert_eq!(candidate(vec![1]), 1);
}

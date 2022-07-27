/// In this Kata, you have to sort an array of non-negative integers according to
/// number of ones in their binary representation in ascending order.
/// For similar number of ones, sort based on decimal value.
/// It must be implemented like this:
/// >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
/// >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
/// >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
fn sort_array(arr: Vec<isize>) -> Vec<isize> {
    let mut sorted_arr = arr.clone();
    sorted_arr.sort_by(|a, b| {
        let a_bin = format!("{:b}", a);
        let b_bin = format!("{:b}", b);
        let a_ones = a_bin.chars().filter(|c| *c == '1').count();
        let b_ones = b_bin.chars().filter(|c| *c == '1').count();
        if a_ones == b_ones {
            a.cmp(&b)
        } else {
            a_ones.cmp(&b_ones)
        }
    });
    sorted_arr

}

fn main() {
    let candidate = sort_array;
    assert_eq!(candidate(vec![1, 5, 2, 3, 4]), vec![1, 2, 4, 3, 5]);
    assert_eq!(candidate(vec![-2, -3, -4, -5, -6]), vec![-4, -2, -6, -5, -3]);
    assert_eq!(candidate(vec![1, 0, 2, 3, 4]), vec![0, 1, 2, 4, 3]);
    assert_eq!(candidate(Vec::<isize>::new()), Vec::<isize>::new());
    assert_eq!(candidate(vec![2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4]), vec![2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77]);
    assert_eq!(candidate(vec![3, 6, 44, 12, 32, 5]), vec![32, 3, 5, 6, 12, 44]);
    assert_eq!(candidate(vec![2, 4, 8, 16, 32]), vec![2, 4, 8, 16, 32]);
    assert_eq!(candidate(vec![2, 4, 8, 16, 32]), vec![2, 4, 8, 16, 32]);
}

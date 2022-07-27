/// You are given an array arr of integers and you need to return
/// sum of magnitudes of integers multiplied by product of all signs
/// of each number in the array, represented by 1, -1 or 0.
/// Note: return None for empty arr.
/// Example:
/// >>> prod_signs([1, 2, 2, -4]) == -9
/// >>> prod_signs([0, 1]) == 0
/// >>> prod_signs([]) == None
fn prod_signs(arr: Vec<isize>) -> Option<isize> {
    if arr.is_empty() {
        return None;
    }
    let mut product = 1;
    let mut sum = 0;
    for i in arr {
        if i == 0 {
            continue;
        }
        product *= i.signum();
        sum += i.abs();
    }
    Some(product * sum)

}

fn main() {
    let candidate = prod_signs;
    assert_eq!(candidate(vec![1, 2, 2, -4]), Some(-9));
    assert_eq!(candidate(vec![0, 1]), Some(0));
    assert_eq!(candidate(vec![1, 1, 1, 2, 3, -1, 1]), Some(-10));
    assert_eq!(candidate(Vec::<isize>::new()), None);
    assert_eq!(candidate(vec![2, 4, 1, 2, -1, -1, 9]), Some(20));
    assert_eq!(candidate(vec![-1, 1, -1, 1]), Some(4));
    assert_eq!(candidate(vec![-1, 1, 1, 1]), Some(-4));
    assert_eq!(candidate(vec![-1, 1, 1, 0]), Some(0));
}

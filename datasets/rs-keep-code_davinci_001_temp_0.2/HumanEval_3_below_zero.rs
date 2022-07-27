/// You're given a list of deposit and withdrawal operations on a bank account that starts with
/// zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
/// at that point function should return True. Otherwise it should return False.
/// >>> below_zero([1, 2, 3])
/// False
/// >>> below_zero([1, 2, -4, 5])
/// True
fn below_zero(operations: Vec<isize>) -> bool {
    operations.iter().any(|&x| x < 0)

}

fn main() {
    let candidate = below_zero;
    assert_eq!(candidate(Vec::<isize>::new()), false);
    assert_eq!(candidate(vec![1, 2, -3, 1, 2, -3]), false);
    assert_eq!(candidate(vec![1, 2, -4, 5, 6]), true);
    assert_eq!(candidate(vec![1, -1, 2, -2, 5, -5, 4, -4]), false);
    assert_eq!(candidate(vec![1, -1, 2, -2, 5, -5, 4, -5]), true);
    assert_eq!(candidate(vec![1, -2, 2, -2, 5, -5, 4, -4]), true);
}

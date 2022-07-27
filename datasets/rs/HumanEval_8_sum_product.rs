/// For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
/// Empty sum should be equal to 0 and empty product should be equal to 1.
/// >>> sum_product([])
/// (0, 1)
/// >>> sum_product([1, 2, 3, 4])
/// (10, 24)
fn sum_product(numbers: Vec<isize>) -> (isize, isize) {
    if numbers.is_empty() {
        return (0, 1);
    }

    let mut sum = 0;
    let mut product = 1;

    for number in numbers {
        sum += number;
        product *= number;
    }

    (sum, product)

}

fn main() {
    let candidate = sum_product;
    assert_eq!(candidate(Vec::<isize>::new()), (0, 1));
    assert_eq!(candidate(vec![1, 1, 1]), (3, 1));
    assert_eq!(candidate(vec![100, 0]), (100, 0));
    assert_eq!(candidate(vec![3, 5, 7]), (15, 105));
    assert_eq!(candidate(vec![10]), (10, 10));
}

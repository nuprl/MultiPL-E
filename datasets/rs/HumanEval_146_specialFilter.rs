/// Write a function that takes an array of numbers as input and returns 
/// the number of elements in the array that are greater than 10 and both 
/// first and last digits of a number are odd (1, 3, 5, 7, 9).
/// For example:
/// specialFilter([15, -73, 14, -15]) => 1 
/// specialFilter([33, -2, -3, 45, 21, 109]) => 2
fn specialFilter(nums: Vec<isize>) -> isize {
    let mut count = 0;
    for num in nums {
        if num > 10 && (num % 10) % 2 == 1 && (num / 10) % 2 == 1 {
            count += 1;
        }
    }
    count

}

fn main() {
    let candidate = specialFilter;
    assert_eq!(candidate(vec![5, -2, 1, -5]), 0);
    assert_eq!(candidate(vec![15, -73, 14, -15]), 1);
    assert_eq!(candidate(vec![33, -2, -3, 45, 21, 109]), 2);
    assert_eq!(candidate(vec![43, -12, 93, 125, 121, 109]), 4);
    assert_eq!(candidate(vec![71, -2, -33, 75, 21, 19]), 3);
    assert_eq!(candidate(vec![1]), 0);
    assert_eq!(candidate(Vec::<isize>::new()), 0);
}

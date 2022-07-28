/// Implement the function f that takes n as a parameter,
/// and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
/// or the sum of numbers from 1 to i otherwise.
/// i starts from 1.
/// the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
/// Example:
/// f(5) == [1, 2, 6, 24, 15]
fn f(n: isize) -> Vec<isize> {
    let mut result = Vec::new();
    for i in 1..n + 1 {
        if i % 2 == 0 {
            result.push(factorial(i));
        } else {
            let mut sum = 0;
            for j in 1..i + 1 {
                sum += j;
            }
            result.push(sum);
        }
    }
    result

}

fn main() {
    let candidate = f;
    assert_eq!(candidate(5), vec![1, 2, 6, 24, 15]);
    assert_eq!(candidate(7), vec![1, 2, 6, 24, 15, 720, 28]);
    assert_eq!(candidate(1), vec![1]);
    assert_eq!(candidate(3), vec![1, 2, 6]);
}

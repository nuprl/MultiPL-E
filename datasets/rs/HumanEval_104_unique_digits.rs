/// Given a list of positive integers x. return a sorted list of all 
/// elements that hasn't any even digit.
/// Note: Returned list should be sorted in increasing order.
/// For example:
/// >>> unique_digits([15, 33, 1422, 1])
/// [1, 15, 33]
/// >>> unique_digits([152, 323, 1422, 10])
/// []
fn unique_digits(x: Vec<isize>) -> Vec<isize> {
    let mut result: Vec<isize> = Vec::new();
    for i in x {
        let mut flag = true;
        let mut i = i;
        while i > 0 {
            let digit = i % 10;
            if digit % 2 == 0 {
                flag = false;
                break;
            }
            i /= 10;
        }
        if flag {
            result.push(i);
        }
    }
    result.sort();
    result

}

fn main() {
    let candidate = unique_digits;
    assert_eq!(candidate(vec![15, 33, 1422, 1]), vec![1, 15, 33]);
    assert_eq!(candidate(vec![152, 323, 1422, 10]), Vec::<isize>::new());
    assert_eq!(candidate(vec![12345, 2033, 111, 151]), vec![111, 151]);
    assert_eq!(candidate(vec![135, 103, 31]), vec![31, 135]);
}

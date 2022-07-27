/// You are given two intervals,
/// where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
/// The given intervals are closed which means that the interval (start, end)
/// includes both start and end.
/// For each given interval, it is assumed that its start is less or equal its end.
/// Your task is to determine whether the length of intersection of these two 
/// intervals is a prime number.
/// Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
/// which its length is 1, which not a prime number.
/// If the length of the intersection is a prime number, return "YES",
/// otherwise, return "NO".
/// If the two intervals don't intersect, return "NO".
/// [input/output] samples:
/// intersection((1, 2), (2, 3)) ==> "NO"
/// intersection((-1, 1), (0, 4)) ==> "NO"
/// intersection((-3, -1), (-5, 5)) ==> "YES"
fn intersection(interval1: (isize, isize), interval2: (isize, isize)) -> String {
    let (start1, end1) = interval1;
    let (start2, end2) = interval2;
    let mut start = 0;
    let mut end = 0;
    if start1 <= start2 {
        start = start2;
    } else {
        start = start1;
    }
    if end1 <= end2 {
        end = end1;
    } else {
        end = end2;
    }
    if start > end {
        return "NO".to_string();
    }
    let mut length = end - start;
    if length == 1 {
        return "YES".to_string();
    }
    if length == 2 {
        return "NO".to_string();
    }
    let mut i = 3;
    while i * i <= length {
        if length % i == 0 {
            return "NO".to_string();
        }
        i += 2;
    }
    "YES".to_string()

}

fn main() {
    let candidate = intersection;
    assert_eq!(candidate((1, 2), (2, 3)), String::from("NO"));
    assert_eq!(candidate((-1, 1), (0, 4)), String::from("NO"));
    assert_eq!(candidate((-3, -1), (-5, 5)), String::from("YES"));
    assert_eq!(candidate((-2, 2), (-4, 0)), String::from("YES"));
    assert_eq!(candidate((-11, 2), (-1, -1)), String::from("NO"));
    assert_eq!(candidate((1, 2), (3, 5)), String::from("NO"));
    assert_eq!(candidate((1, 2), (1, 2)), String::from("NO"));
    assert_eq!(candidate((-2, -2), (-3, -2)), String::from("NO"));
}

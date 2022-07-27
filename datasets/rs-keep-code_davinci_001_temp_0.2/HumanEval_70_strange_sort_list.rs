/// Given list of integers, return list in strange order.
/// Strange sorting, is when you start with the minimum value,
/// then maximum of the remaining integers, then minimum and so on.
/// Examples:
/// strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
/// strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
/// strange_sort_list([]) == []
fn strange_sort_list(lst: Vec<isize>) -> Vec<isize> {
    let mut lst = lst;
    let mut result = Vec::new();
    let mut min = lst.pop().unwrap();
    let mut max = lst.pop().unwrap();
    while !lst.is_empty() {
        if min < max {
            result.push(min);
            if let Some(x) = lst.pop() {
                if x < max {
                    min = x;
                } else {
                    max = x;
                }
            }
        } else {
            result.push(max);
            if let Some(x) = lst.pop() {
                if x < min {
                    max = x;
                } else {
                    min = x;
                }
            }
        }
    }
    result.push(min);
    result.push(max);
    result

}

fn main() {
    let candidate = strange_sort_list;
    assert_eq!(candidate(vec![1, 2, 3, 4]), vec![1, 4, 2, 3]);
    assert_eq!(candidate(vec![5, 6, 7, 8, 9]), vec![5, 9, 6, 8, 7]);
    assert_eq!(candidate(vec![1, 2, 3, 4, 5]), vec![1, 5, 2, 4, 3]);
    assert_eq!(candidate(vec![5, 6, 7, 8, 9, 1]), vec![1, 9, 5, 8, 6, 7]);
    assert_eq!(candidate(vec![5, 5, 5, 5]), vec![5, 5, 5, 5]);
    assert_eq!(candidate(Vec::<isize>::new()), Vec::<isize>::new());
    assert_eq!(candidate(vec![1, 2, 3, 4, 5, 6, 7, 8]), vec![1, 8, 2, 7, 3, 6, 4, 5]);
    assert_eq!(candidate(vec![0, 2, 2, 2, 5, 5, -5, -5]), vec![-5, 5, -5, 5, 0, 2, 2, 2]);
    assert_eq!(candidate(vec![111111]), vec![111111]);
}

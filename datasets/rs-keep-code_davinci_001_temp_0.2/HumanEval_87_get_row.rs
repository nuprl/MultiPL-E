/// You are given a 2 dimensional data, as a nested lists,
/// which is similar to matrix, however, unlike matrices,
/// each row may contain a different number of columns.
/// Given lst, and integer x, find integers x in the list,
/// and return list of tuples, [(x1, y1), (x2, y2) ...] such that
/// each tuple is a coordinate - (row, columns), starting with 0.
/// Sort coordinates initially by rows in ascending order.
/// Also, sort coordinates of the row by columns in descending order.
/// Examples:
/// get_row([
/// [1,2,3,4,5,6],
/// [1,2,3,4,1,6],
/// [1,2,3,4,5,1]
/// ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
/// get_row([], 1) == []
/// get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
fn get_row(lst: Vec<Vec<isize>>, x: isize) -> Vec<(isize, isize)> {
    let mut result: Vec<(isize, isize)> = Vec::new();
    let mut row_index = 0;
    let mut col_index = 0;
    let mut row_sorted: Vec<Vec<isize>> = Vec::new();
    for row in lst {
        let mut col_sorted: Vec<isize> = Vec::new();
        for col in row {
            if col == x {
                result.push((row_index, col_index));
            }
            col_sorted.push(col);
            col_index += 1;
        }
        col_sorted.sort_by(|a, b| b.cmp(a));
        row_sorted.push(col_sorted);
        row_index += 1;
        col_index = 0;
    }
    row_sorted.sort_by(|a, b| a[0].cmp(&b[0]));
    for row in row_sorted {
        for col in row {
            if col == x {
                result.push((row_index, col_index));
            }
            col_index += 1;
        }
        row_index += 1;
        col_index = 0;
    }
    result

}

fn main() {
    let candidate = get_row;
    assert_eq!(candidate(vec![vec![1, 2, 3, 4, 5, 6], vec![1, 2, 3, 4, 1, 6], vec![1, 2, 3, 4, 5, 1]], 1), vec![(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]);
    assert_eq!(candidate(vec![vec![1, 2, 3, 4, 5, 6], vec![1, 2, 3, 4, 5, 6], vec![1, 2, 3, 4, 5, 6], vec![1, 2, 3, 4, 5, 6], vec![1, 2, 3, 4, 5, 6], vec![1, 2, 3, 4, 5, 6]], 2), vec![(0, 1), (1, 1), (2, 1), (3, 1), (4, 1), (5, 1)]);
    assert_eq!(candidate(vec![vec![1, 2, 3, 4, 5, 6], vec![1, 2, 3, 4, 5, 6], vec![1, 1, 3, 4, 5, 6], vec![1, 2, 1, 4, 5, 6], vec![1, 2, 3, 1, 5, 6], vec![1, 2, 3, 4, 1, 6], vec![1, 2, 3, 4, 5, 1]], 1), vec![(0, 0), (1, 0), (2, 1), (2, 0), (3, 2), (3, 0), (4, 3), (4, 0), (5, 4), (5, 0), (6, 5), (6, 0)]);
    assert_eq!(candidate(Vec::<Vec<isize>>::new(), 1), Vec::<(isize, isize)>::new());
    assert_eq!(candidate(vec![vec![1]], 2), Vec::<(isize, isize)>::new());
    assert_eq!(candidate(vec![vec![], vec![1], vec![1, 2, 3]], 3), vec![(2, 2)]);
}

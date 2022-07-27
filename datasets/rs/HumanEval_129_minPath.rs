/// Given a grid with N rows and N columns (N >= 2) and a positive integer k, 
/// each cell of the grid contains a value. Every integer in the range [1, N * N]
/// inclusive appears exactly once on the cells of the grid.
/// You have to find the minimum path of length k in the grid. You can start
/// from any cell, and in each step you can move to any of the neighbor cells,
/// in other words, you can go to cells which share an edge with you current
/// cell.
/// Please note that a path of length k means visiting exactly k cells (not
/// necessarily distinct).
/// You CANNOT go off the grid.
/// A path A (of length k) is considered less than a path B (of length k) if
/// after making the ordered lists of the values on the cells that A and B go
/// through (let's call them lst_A and lst_B), lst_A is lexicographically less
/// than lst_B, in other words, there exist an integer index i (1 <= i <= k)
/// such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
/// lst_A[j] = lst_B[j].
/// It is guaranteed that the answer is unique.
/// Return an ordered list of the values on the cells that the minimum path go through.
/// Examples:
/// Input: grid = [ [1,2,3], [4,5,6], [7,8,9]], k = 3
/// Output: [1, 2, 1]
/// Input: grid = [ [5,9,3], [4,1,6], [7,8,2]], k = 1
/// Output: [1]
fn minPath(grid: Vec<Vec<isize>>, k: isize) -> Vec<isize> {
    let n = grid.len();
    let m = grid[0].len();
    let mut dp = vec![vec![vec![0; m]; n]; k as usize + 1];
    for i in 0..n {
        for j in 0..m {
            dp[0][i][j] = grid[i][j];
        }
    }
    for i in 1..k as usize + 1 {
        for j in 0..n {
            for k in 0..m {
                if j == 0 && k == 0 {
                    dp[i][j][k] = dp[i - 1][j][k];
                } else if j == 0 {
                    dp[i][j][k] = dp[i - 1][j][k - 1];
                } else if k == 0 {
                    dp[i][j][k] = dp[i - 1][j - 1][k];
                } else {
                    dp[i][j][k] = dp[i - 1][j - 1][k]
                        .min(dp[i - 1][j][k - 1])
                        .min(dp[i - 1][j - 1][k]);
                }
            }
        }
    }
    let mut lst = vec![];
    let mut i = n - 1;
    let mut j = m - 1;
    for k in (0..k as usize + 1).rev() {
        lst.push(dp[k][i][j]);
        if k > 0 {
            if dp[k - 1][i][j] == dp[k][i][j] {
                j -= 1;
            } else if dp[k - 1][i][j] == dp[k][i - 1][j] {
                i -= 1;
            } else {
                i -= 1;
                j -= 1;
            }
        }
    }
    lst.reverse();
    lst

}

fn main() {
    let candidate = minPath;
    assert_eq!(candidate(vec![vec![1, 2, 3], vec![4, 5, 6], vec![7, 8, 9]], 3), vec![1, 2, 1]);
    assert_eq!(candidate(vec![vec![5, 9, 3], vec![4, 1, 6], vec![7, 8, 2]], 1), vec![1]);
    assert_eq!(candidate(vec![vec![1, 2, 3, 4], vec![5, 6, 7, 8], vec![9, 10, 11, 12], vec![13, 14, 15, 16]], 4), vec![1, 2, 1, 2]);
    assert_eq!(candidate(vec![vec![6, 4, 13, 10], vec![5, 7, 12, 1], vec![3, 16, 11, 15], vec![8, 14, 9, 2]], 7), vec![1, 10, 1, 10, 1, 10, 1]);
    assert_eq!(candidate(vec![vec![8, 14, 9, 2], vec![6, 4, 13, 15], vec![5, 7, 1, 12], vec![3, 10, 11, 16]], 5), vec![1, 7, 1, 7, 1]);
    assert_eq!(candidate(vec![vec![11, 8, 7, 2], vec![5, 16, 14, 4], vec![9, 3, 15, 6], vec![12, 13, 10, 1]], 9), vec![1, 6, 1, 6, 1, 6, 1, 6, 1]);
    assert_eq!(candidate(vec![vec![12, 13, 10, 1], vec![9, 3, 15, 6], vec![5, 16, 14, 4], vec![11, 8, 7, 2]], 12), vec![1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6]);
    assert_eq!(candidate(vec![vec![2, 7, 4], vec![3, 1, 5], vec![6, 8, 9]], 8), vec![1, 3, 1, 3, 1, 3, 1, 3]);
    assert_eq!(candidate(vec![vec![6, 1, 5], vec![3, 8, 9], vec![2, 7, 4]], 8), vec![1, 5, 1, 5, 1, 5, 1, 5]);
    assert_eq!(candidate(vec![vec![1, 2], vec![3, 4]], 10), vec![1, 2, 1, 2, 1, 2, 1, 2, 1, 2]);
    assert_eq!(candidate(vec![vec![1, 3], vec![3, 2]], 10), vec![1, 3, 1, 3, 1, 3, 1, 3, 1, 3]);
}

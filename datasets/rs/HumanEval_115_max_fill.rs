/// You are given a rectangular grid of wells. Each row represents a single well,
/// and each 1 in a row represents a single unit of water.
/// Each well has a corresponding bucket that can be used to extract water from it, 
/// and all buckets have the same capacity.
/// Your task is to use the buckets to empty the wells.
/// Output the number of times you need to lower the buckets.
/// Example 1:
/// Input: 
/// grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
/// bucket_capacity : 1
/// Output: 6
/// Example 2:
/// Input: 
/// grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
/// bucket_capacity : 2
/// Output: 5
/// Example 3:
/// Input: 
/// grid : [[0,0,0], [0,0,0]]
/// bucket_capacity : 5
/// Output: 0
/// Constraints:
/// * all wells have the same length
/// * 1 <= grid.length <= 10^2
/// * 1 <= grid[:,1].length <= 10^2
/// * grid[i][j] -> 0 | 1
/// * 1 <= capacity <= 10
fn max_fill(grid: Vec<Vec<isize>>, capacity: isize) -> isize {
    let mut grid = grid;
    let mut max_fill = 0;
    for i in 0..grid.len() {
        for j in 0..grid[i].len() {
            if grid[i][j] == 1 {
                let mut fill = 0;
                let mut fill_grid = grid.clone();
                let mut queue = VecDeque::new();
                queue.push_back((i, j));
                while !queue.is_empty() {
                    let (x, y) = queue.pop_front().unwrap();
                    fill += 1;
                    fill_grid[x][y] = 0;
                    if x > 0 && fill_grid[x - 1][y] == 1 {
                        queue.push_back((x - 1, y));
                    }
                    if x < fill_grid.len() - 1 && fill_grid[x + 1][y] == 1 {
                        queue.push_back((x + 1, y));
                    }
                    if y > 0 && fill_grid[x][y - 1] == 1 {
                        queue.push_back((x, y - 1));
                    }
                    if y < fill_grid[x].len() - 1 && fill_grid[x][y + 1] == 1 {
                        queue.push_back((x, y + 1));
                    }
                }
                if fill > max_fill {
                    max_fill = fill;
                }
            }
        }
    }
    max_fill

}

fn main() {
    let candidate = max_fill;
    assert_eq!(candidate(vec![vec![0, 0, 1, 0], vec![0, 1, 0, 0], vec![1, 1, 1, 1]], 1), 6);
    assert_eq!(candidate(vec![vec![0, 0, 1, 1], vec![0, 0, 0, 0], vec![1, 1, 1, 1], vec![0, 1, 1, 1]], 2), 5);
    assert_eq!(candidate(vec![vec![0, 0, 0], vec![0, 0, 0]], 5), 0);
    assert_eq!(candidate(vec![vec![1, 1, 1, 1], vec![1, 1, 1, 1]], 2), 4);
    assert_eq!(candidate(vec![vec![1, 1, 1, 1], vec![1, 1, 1, 1]], 9), 2);
}

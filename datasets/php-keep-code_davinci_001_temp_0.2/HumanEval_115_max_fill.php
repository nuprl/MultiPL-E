<?php
// You are given a rectangular grid of wells. Each row represents a single well,
// and each 1 in a row represents a single unit of water.
// Each well has a corresponding bucket that can be used to extract water from it, 
// and all buckets have the same capacity.
// Your task is to use the buckets to empty the wells.
// Output the number of times you need to lower the buckets.
// Example 1:
// Input: 
// grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
// bucket_capacity : 1
// Output: 6
// Example 2:
// Input: 
// grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
// bucket_capacity : 2
// Output: 5
// Example 3:
// Input: 
// grid : [[0,0,0], [0,0,0]]
// bucket_capacity : 5
// Output: 0
// Constraints:
// * all wells have the same length
// * 1 <= grid.length <= 10^2
// * 1 <= grid[:,1].length <= 10^2
// * grid[i][j] -> 0 | 1
// * 1 <= capacity <= 10
function max_fill($grid, $capacity) {
    $max = 0;
    $n = count($grid);
    $m = count($grid[0]);
    $visited = [];
    for ($i = 0; $i < $n; $i++) {
        for ($j = 0; $j < $m; $j++) {
            if ($grid[$i][$j] == 1 && !isset($visited[$i][$j])) {
                $visited[$i][$j] = true;
                $count = 0;
                $queue = [];
                array_push($queue, [$i, $j]);
                while (!empty($queue)) {
                    $node = array_shift($queue);
                    $x = $node[0];
                    $y = $node[1];
                    $count++;
                    if ($x > 0 && $grid[$x - 1][$y] == 1 && !isset($visited[$x - 1][$y])) {
                        array_push($queue, [$x - 1, $y]);
                        $visited[$x - 1][$y] = true;
                    }
                    if ($x < $n - 1 && $grid[$x + 1][$y] == 1 && !isset($visited[$x + 1][$y])) {
                        array_push($queue, [$x + 1, $y]);
                        $visited[$x + 1][$y] = true;
                    }
                    if ($y > 0 && $grid[$x][$y - 1] == 1 && !isset($visited[$x][$y - 1])) {
                        array_push($queue, [$x, $y - 1]);
                        $visited[$x][$y - 1] = true;
                    }
                    if ($y < $m - 1 && $grid[$x][$y + 1] == 1 && !isset($visited[$x][$y + 1])) {
                        array_push($queue, [$x, $y + 1]);
                        $visited[$x][$y + 1] = true;
                    }
               

function candidate(...$args) {
    return max_fill(...$args);
}

function test(): void {
    if (candidate(array(array(0, 0, 1, 0), array(0, 1, 0, 0), array(1, 1, 1, 1)), 1) !== 6) { throw new Exception("Test failed!"); }
    if (candidate(array(array(0, 0, 1, 1), array(0, 0, 0, 0), array(1, 1, 1, 1), array(0, 1, 1, 1)), 2) !== 5) { throw new Exception("Test failed!"); }
    if (candidate(array(array(0, 0, 0), array(0, 0, 0)), 5) !== 0) { throw new Exception("Test failed!"); }
    if (candidate(array(array(1, 1, 1, 1), array(1, 1, 1, 1)), 2) !== 4) { throw new Exception("Test failed!"); }
    if (candidate(array(array(1, 1, 1, 1), array(1, 1, 1, 1)), 9) !== 2) { throw new Exception("Test failed!"); }
}

test();
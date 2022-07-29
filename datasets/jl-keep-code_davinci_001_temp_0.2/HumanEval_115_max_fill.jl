"""
    You are given a rectangular grid of wells. Each row represents a single well,
    and each 1 in a row represents a single unit of water.
    Each well has a corresponding bucket that can be used to extract water from it, 
    and all buckets have the same capacity.
    Your task is to use the buckets to empty the wells.
    Output the number of times you need to lower the buckets.

    Example 1:
        Input: 
            grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
            bucket_capacity : 1
        Output: 6

    Example 2:
        Input: 
            grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
            bucket_capacity : 2
        Output: 5
    
    Example 3:
        Input: 
            grid : [[0,0,0], [0,0,0]]
            bucket_capacity : 5
        Output: 0

    Constraints:
        * all wells have the same length
        * 1 <= grid.length <= 10^2
        * 1 <= grid[:,1].length <= 10^2
        * grid[i][j] -> 0 | 1
        * 1 <= capacity <= 10
    """
function max_fill(grid::Vector{Vector{Int64}}, capacity::Int64)::Int64 
    # Initialize the number of times we need to fill the buckets
    fill_count = 0
    # Initialize the number of rows and columns in the grid
    rows = size(grid)[1]
    cols = size(grid)[2]
    # Initialize the number of rows and columns in the grid
    for i in 1:rows
        for j in 1:cols
            # If the current well has water, fill the bucket
            if grid[i][j] == 1
                grid[i][j] = capacity
                fill_count += 1
            end
        end
    end
    return fill_count
end

using Test

@testset begin

candidate = max_fill;
	@test(candidate([[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], 1) == 6)
	@test(candidate([[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], 2) == 5)
	@test(candidate([[0, 0, 0], [0, 0, 0]], 5) == 0)
	@test(candidate([[1, 1, 1, 1], [1, 1, 1, 1]], 2) == 4)
	@test(candidate([[1, 1, 1, 1], [1, 1, 1, 1]], 9) == 2)
end

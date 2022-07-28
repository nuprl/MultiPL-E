"""
    Given an array of integers, sort the integers that are between 1 and 9 inclusive,
    reverse the resulting array, and then replace each digit by its corresponding name from
    "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".

    For example:
      arr = [2, 1, 1, 4, 5, 8, 2, 3]   
            -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
            -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
      return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
    
      If the array is empty, return an empty array:
      arr = []
      return []
    
      If the array has any strange number ignore it:
      arr = [1, -1 , 55] 
            -> sort arr -> [-1, 1, 55]
            -> reverse arr -> [55, 1, -1]
      return = ['One']
    """
function by_length(arr::Vector{Int64})::Vector{String} 
    sort(arr)
    reverse(arr)
    for i in 1:length(arr)
        if arr[i] == 1
            arr[i] = "One"
        elseif arr[i] == 2
            arr[i] = "Two"
        elseif arr[i] == 3
            arr[i] = "Three"
        elseif arr[i] == 4
            arr[i] = "Four"
        elseif arr[i] == 5
            arr[i] = "Five"
        elseif arr[i] == 6
            arr[i] = "Six"
        elseif arr[i] == 7
            arr[i] = "Seven"
        elseif arr[i] == 8
            arr[i] = "Eight"
        elseif arr[i] == 9
            arr[i] = "Nine"
        end
    end
    return arr
end

using Test

@testset begin

candidate = by_length;
	@test(candidate([2, 1, 1, 4, 5, 8, 2, 3]) == ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"])
	@test(candidate(Vector{Int64}([])) == Vector{String}([]))
	@test(candidate([1, -1, 55]) == ["One"])
	@test(candidate([1, -1, 3, 2]) == ["Three", "Two", "One"])
	@test(candidate([9, 4, 8]) == ["Nine", "Eight", "Four"])
end

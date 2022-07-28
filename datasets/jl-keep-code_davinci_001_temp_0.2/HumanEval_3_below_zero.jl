""" You're given a list of deposit and withdrawal operations on a bank account that starts with
    zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
    at that point function should return True. Otherwise it should return False.
    >>> below_zero([1, 2, 3])
    False
    >>> below_zero([1, 2, -4, 5])
    True
    """
function below_zero(operations::Vector{Int64})::Bool 
    balance = 0
    for op in operations
        if op < 0
            balance += op
            if balance < 0
                return true
            end
        end
    end
    return false
end

using Test

@testset begin

candidate = below_zero;
	@test(candidate(Vector{Int64}([])) == false)
	@test(candidate([1, 2, -3, 1, 2, -3]) == false)
	@test(candidate([1, 2, -4, 5, 6]) == true)
	@test(candidate([1, -1, 2, -2, 5, -5, 4, -4]) == false)
	@test(candidate([1, -1, 2, -2, 5, -5, 4, -5]) == true)
	@test(candidate([1, -2, 2, -2, 5, -5, 4, -4]) == true)
end

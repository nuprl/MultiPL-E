""" Check if in given list of numbers, are any two numbers closer to each other than
    given threshold.
    >>> has_close_elements([1.0, 2.0, 3.0], 0.5)
    False
    >>> has_close_elements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], 0.3)
    True
    """
function has_close_elements(numbers::Vector{Float64}, threshold::Float64)::Bool 
    for i in 1:length(numbers)
        for j in 1:length(numbers)
            if i != j
                if abs(numbers[i] - numbers[j]) < threshold
                    return true
                end
            end
        end
    end
    return false
end

using Test

@testset begin

candidate = has_close_elements;
	@test(candidate([1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.3) == true)
	@test(candidate([1.0, 2.0, 3.9, 4.0, 5.0, 2.2], 0.05) == false)
	@test(candidate([1.0, 2.0, 5.9, 4.0, 5.0], 0.95) == true)
	@test(candidate([1.0, 2.0, 5.9, 4.0, 5.0], 0.8) == false)
	@test(candidate([1.0, 2.0, 3.0, 4.0, 5.0, 2.0], 0.1) == true)
	@test(candidate([1.1, 2.2, 3.1, 4.1, 5.1], 1.0) == true)
	@test(candidate([1.1, 2.2, 3.1, 4.1, 5.1], 0.5) == false)
end

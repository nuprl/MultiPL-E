"""
    Given a dictionary, return True if all keys are strings in lower 
    case or all keys are strings in upper case, else return False.
    The function should return False is the given dictionary is empty.
    Examples:
    check_dict_case({"a":"apple", "b":"banana"}) should return True.
    check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return False.
    check_dict_case({"a":"apple", "8":"banana", "a":"apple"}) should return False.
    check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return False.
    check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return True.
    """
function check_dict_case(dict::Dict{String, String}>)::Bool 
    for key in keys(dict)
        if !(isalpha(key))
            return false
        end
    end
    return true
end

using Test

@testset begin

candidate = check_dict_case;
	@test(candidate(Dict("p" => "pineapple", "b" => "banana")) == true)
	@test(candidate(Dict("p" => "pineapple", "A" => "banana", "B" => "banana")) == false)
	@test(candidate(Dict("p" => "pineapple", "5" => "banana", "a" => "apple")) == false)
	@test(candidate(Dict("Name" => "John", "Age" => "36", "City" => "Houston")) == false)
	@test(candidate(Dict("STATE" => "NC", "ZIP" => "12345")) == true)
	@test(candidate(Dict("fruit" => "Orange", "taste" => "Sweet")) == true)
	@test(candidate(Dict()) == false)
end

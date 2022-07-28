"""Create a function which takes a string representing a file's name, and returns
    'Yes' if the the file's name is valid, and returns 'No' otherwise.
    A file's name is considered to be valid if and only if all the following conditions 
    are met:
    - There should not be more than three digits ('0'-'9') in the file's name.
    - The file's name contains exactly one dot '.'
    - The substring before the dot should not be empty, and it starts with a letter from 
    the latin alphapet ('a'-'z' and 'A'-'Z').
    - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
    Examples:
    file_name_check("example.txt") # => 'Yes'
    file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
    """
function file_name_check(file_name::String)::String 
    if length(file_name) > 3
        for i in file_name
            if i == '.'
                if length(file_name) > 4
                    if length(file_name) > 5
                        return "No"
                    else
                        return "Yes"
                    end
                else
                    return "No"
                end
            elseif i == '0' || i == '1' || i == '2' || i == '3' || i == '4' || i == '5' || i == '6' || i == '7' || i == '8' || i == '9'
                return "No"
            end
        end
    else
        return "No"
    end
end

using Test

@testset begin

candidate = file_name_check;
	@test(candidate("example.txt") == "Yes")
	@test(candidate("1example.dll") == "No")
	@test(candidate("s1sdf3.asd") == "No")
	@test(candidate("K.dll") == "Yes")
	@test(candidate("MY16FILE3.exe") == "Yes")
	@test(candidate("His12FILE94.exe") == "No")
	@test(candidate("_Y.txt") == "No")
	@test(candidate("?aREYA.exe") == "No")
	@test(candidate("/this_is_valid.dll") == "No")
	@test(candidate("this_is_valid.wow") == "No")
	@test(candidate("this_is_valid.txt") == "Yes")
	@test(candidate("this_is_valid.txtexe") == "No")
	@test(candidate("#this2_i4s_5valid.ten") == "No")
	@test(candidate("@this1_is6_valid.exe") == "No")
	@test(candidate("this_is_12valid.6exe4.txt") == "No")
	@test(candidate("all.exe.txt") == "No")
	@test(candidate("I563_No.exe") == "Yes")
	@test(candidate("Is3youfault.txt") == "Yes")
	@test(candidate("no_one#knows.dll") == "Yes")
	@test(candidate("1I563_Yes3.exe") == "No")
	@test(candidate("I563_Yes3.txtt") == "No")
	@test(candidate("final..txt") == "No")
	@test(candidate("final132") == "No")
	@test(candidate("_f4indsartal132.") == "No")
	@test(candidate(".txt") == "No")
	@test(candidate("s.") == "No")
end

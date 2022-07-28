"""
    Given a string text, replace all spaces in it with underscores, 
    and if a string has more than 2 consecutive spaces, 
    then replace all consecutive spaces with - 
    
    fix_spaces("Example") == "Example"
    fix_spaces("Example 1") == "Example_1"
    fix_spaces(" Example 2") == "_Example_2"
    fix_spaces(" Example   3") == "_Example-3"
    """
function fix_spaces(text::String)::String 
    text = replace(text, " " => "_")
    text = replace(text, r"\s+" => "-")
    return text
end

using Test

@testset begin

candidate = fix_spaces;
	@test(candidate("Example") == "Example")
	@test(candidate("Mudasir Hanif ") == "Mudasir_Hanif_")
	@test(candidate("Yellow Yellow  Dirty  Fellow") == "Yellow_Yellow__Dirty__Fellow")
	@test(candidate("Exa   mple") == "Exa-mple")
	@test(candidate("   Exa 1 2 2 mple") == "-Exa_1_2_2_mple")
end

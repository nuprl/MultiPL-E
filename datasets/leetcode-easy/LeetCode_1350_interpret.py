def interpret(command: str) -> str:
    """
    You own a Goal Parser that can interpret a string command. The command consists of an alphabet of "G", "()" and/or "(al)" in some order. The Goal Parser will interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string "al". The interpreted strings are then concatenated in the original order.
    Given the string command, return the Goal Parser's interpretation of command.
 
    Example 1:

    Input: command = "G()(al)"
    Output: "Goal"
    Explanation: The Goal Parser interprets the command as follows:
    G -> G
    () -> o
    (al) -> al
    The final concatenated result is "Goal".

    Example 2:

    Input: command = "G()()()()(al)"
    Output: "Gooooal"

    Example 3:

    Input: command = "(al)G(al)()()G"
    Output: "alGalooG"

 
    Constraints:

    1 <= command.length <= 100
    command consists of "G", "()", and/or "(al)" in some order.

    """
    ### Canonical solution below ###
    result = []
    i = 0
    while i < len(command):
        if command[i] == "G":
            result.append("G")
            i += 1
        elif command[i:i+2] == "()":
            result.append("o")
            i += 2
        else:
            result.append("al")
            i += 4
    return "".join(result)




### Unit tests below ###
def check(candidate):
	assert candidate("()") == "o"
	assert candidate("()()()") == "ooo"
	assert candidate(
    "(al)G(al)()()(al)") == "alGalooal", "Should handle multiple (al)"
	assert candidate(
    "G()()()()(al)") == "Gooooal"
	assert candidate("()()()(al)G(al)") == "oooalGal"
	assert candidate("(al)G(al)()()G") == "alGalooG"
	assert candidate("()()()()") == "oooo"
	assert candidate(
    "G()()()()(al)") == "Gooooal", "Should handle multiple G()()()()(al)"
	assert candidate("G") == "G"
	assert candidate(
    "(al)G(al)()()G") == "alGalooG"
	assert candidate(
    "G()()()(al)(al)G()()(al)") == "GoooalalGooal", "Should handle multiple (al)"
	assert candidate(
    "G()(al)") == "Goal"
	assert candidate("()()") == "oo"
	assert candidate("()()()()(al)") == "ooooal"
	assert candidate("G()()()()(al)") == "Gooooal"
	assert candidate("(al)") == "al"
	assert candidate("G()G") == "GoG"
def test_check():
	check(interpret)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100

# brackets is a string of "<" and ">".
-- return True if every opening bracket has a corresponding closing bracket.
-- >>> correct_bracketing("<")
-- False
-- >>> correct_bracketing("<>")
-- True
-- >>> correct_bracketing("<<><>>")
-- True
-- >>> correct_bracketing("><<>")
-- False
correct_bracketing <- function(brackets)
{
    # Define a variable to store the number of opening brackets.
    num_open <- 0
    
    # Iterate over each character in the string.
    for (char in brackets)
    {
        # If the character is an opening bracket, increment num_open.
        if (char == "<")
        {
            num_open <- num_open + 1
        }
        # If the character is a closing bracket, decrement num_open.
        else if (char == ">")
        {
            num_open <- num_open - 1
        }
    }
    
    # Return True if num_open is 0, False otherwise.
    return (num_open == 0)

test_humaneval <- function() {
candidate <- correct_bracketing
    if(!identical(candidate('<>'), true)){quit('no', 1)}
    if(!identical(candidate('<<><>>'), true)){quit('no', 1)}
    if(!identical(candidate('<><><<><>><>'), true)){quit('no', 1)}
    if(!identical(candidate('<><><<<><><>><>><<><><<>>>'), true)){quit('no', 1)}
    if(!identical(candidate('<<<><>>>>'), false)){quit('no', 1)}
    if(!identical(candidate('><<>'), false)){quit('no', 1)}
    if(!identical(candidate('<'), false)){quit('no', 1)}
    if(!identical(candidate('<<<<'), false)){quit('no', 1)}
    if(!identical(candidate('>'), false)){quit('no', 1)}
    if(!identical(candidate('<<>'), false)){quit('no', 1)}
    if(!identical(candidate('<><><<><>><>><<>'), false)){quit('no', 1)}
    if(!identical(candidate('<><><<><>><>>><>'), false)){quit('no', 1)}
}
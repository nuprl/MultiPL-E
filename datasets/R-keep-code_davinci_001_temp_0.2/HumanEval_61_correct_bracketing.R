# brackets is a string of "(" and ")".
-- return True if every opening bracket has a corresponding closing bracket.
-- >>> correct_bracketing("(")
-- False
-- >>> correct_bracketing("()")
-- True
-- >>> correct_bracketing("(()())")
-- True
-- >>> correct_bracketing(")(()")
-- False
correct_bracketing <- function(brackets)
{
    # create a list of the brackets
    bracket_list <- strsplit(brackets, "")[[1]]
    
    # create a list of the opening brackets
    opening_brackets <- c("(", "[", "{")
    
    # create a list of the closing brackets
    closing_brackets <- c(")", "]", "}")
    
    # create a list of the matching brackets
    matching_brackets <- c(")(", "])", "}{")
    
    # create a list of the brackets that have been seen
    seen_brackets <- c()
    
    # for each bracket in the list
    for (i in 1:length(bracket_list))
    {
        # if the bracket is an opening bracket
        if (bracket_list[i] %in% opening_brackets)
        {
            # add it to the list of brackets that have been seen
            seen_brackets <- c(seen_brackets, bracket_list[i])
        }
        # if the bracket is a closing bracket
        else if (bracket_list[i] %in% closing_brackets)
        {
            # if the bracket is a closing bracket and there is no opening bracket that matches it
            if (bracket_list[i] %in% matching_brackets[matching_brackets %in% seen_brackets])
            {
                # return False
                return(FALSE)
            }
        }
    }
    
    # if there are no brackets that have been seen
    if (length(seen_brackets) == 0)
    {
        # return False
        return(FALSE)
    }
    # if there are brackets that have been seen
    else
    {
        # return True
        return(TRUE)
    }

test_humaneval <- function() {
candidate <- correct_bracketing
    if(!identical(candidate('()'), true)){quit('no', 1)}
    if(!identical(candidate('(()())'), true)){quit('no', 1)}
    if(!identical(candidate('()()(()())()'), true)){quit('no', 1)}
    if(!identical(candidate('()()((()()())())(()()(()))'), true)){quit('no', 1)}
    if(!identical(candidate('((()())))'), false)){quit('no', 1)}
    if(!identical(candidate(')(()'), false)){quit('no', 1)}
    if(!identical(candidate('('), false)){quit('no', 1)}
    if(!identical(candidate('(((('), false)){quit('no', 1)}
    if(!identical(candidate(')'), false)){quit('no', 1)}
    if(!identical(candidate('(()'), false)){quit('no', 1)}
    if(!identical(candidate('()()(()())())(()'), false)){quit('no', 1)}
    if(!identical(candidate('()()(()())()))()'), false)){quit('no', 1)}
}
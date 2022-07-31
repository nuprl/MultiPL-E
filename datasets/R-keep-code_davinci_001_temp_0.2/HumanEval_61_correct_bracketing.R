# brackets is a string of "(" and ")".
# return True if every opening bracket has a corresponding closing bracket.
# >>> correct_bracketing("(")
# False
# >>> correct_bracketing("()")
# True
# >>> correct_bracketing("(()())")
# True
# >>> correct_bracketing(")(()")
# False
correct_bracketing <- function(brackets) {
    stack <- vector()
    for (bracket in brackets) {
        if (bracket == "(") {
            stack <- c(stack, bracket)
        } else {
            if (length(stack) == 0) {
                return(FALSE)
            }
            stack <- stack[-length(stack)]
        }
    }
    if (length(stack) == 0) {
        return(TRUE)
    } else {
        return(FALSE)
    }
}
correct_bracketing("(")
correct_bracketing("()")
correct_bracketing("(()())")
correct_bracketing(")(()")


test_humaneval <- function() {
candidate <- correct_bracketing
    if(!identical(candidate('()'), TRUE)){quit('no', 1)}
    if(!identical(candidate('(()())'), TRUE)){quit('no', 1)}
    if(!identical(candidate('()()(()())()'), TRUE)){quit('no', 1)}
    if(!identical(candidate('()()((()()())())(()()(()))'), TRUE)){quit('no', 1)}
    if(!identical(candidate('((()())))'), FALSE)){quit('no', 1)}
    if(!identical(candidate(')(()'), FALSE)){quit('no', 1)}
    if(!identical(candidate('('), FALSE)){quit('no', 1)}
    if(!identical(candidate('(((('), FALSE)){quit('no', 1)}
    if(!identical(candidate(')'), FALSE)){quit('no', 1)}
    if(!identical(candidate('(()'), FALSE)){quit('no', 1)}
    if(!identical(candidate('()()(()())())(()'), FALSE)){quit('no', 1)}
    if(!identical(candidate('()()(()())()))()'), FALSE)){quit('no', 1)}
}
test_humaneval()
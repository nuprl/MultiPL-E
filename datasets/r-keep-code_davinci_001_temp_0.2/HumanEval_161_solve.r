# You are given a string s.
# if s[i] is a letter, reverse its case from lower to upper or vise versa, 
# otherwise keep it as it is.
# If the string contains no letters, reverse the string.
# The function should return the resulted string.
# Examples
# solve("1234") = "4321"
# solve("ab") = "AB"
# solve("#a@C") = "#A@c"
solve <- function(s) {
    if (length(s) == 0) {
        return(s)
    }
    if (nchar(s) == 0) {
        return(s)
    }
    if (nchar(s) == 1) {
        if (s == toupper(s)) {
            return(tolower(s))
        } else {
            return(toupper(s))
        }
    }
    if (s[1] == toupper(s[1])) {
        return(tolower(s[1]) + solve(substring(s, 2, nchar(s))))
    } else {
        return(toupper(s[1]) + solve(substring(s, 2, nchar(s))))
    }
}
solve("1234")
solve("ab")
solve("#a@C")


test_humaneval <- function() {
candidate <- solve
    if(!identical(candidate('AsDf'), 'aSdF')){quit('no', 1)}
    if(!identical(candidate('1234'), '4321')){quit('no', 1)}
    if(!identical(candidate('ab'), 'AB')){quit('no', 1)}
    if(!identical(candidate('#a@C'), '#A@c')){quit('no', 1)}
    if(!identical(candidate('#AsdfW^45'), '#aSDFw^45')){quit('no', 1)}
    if(!identical(candidate('#6@2'), '2@6#')){quit('no', 1)}
    if(!identical(candidate('#$a^D'), '#$A^d')){quit('no', 1)}
    if(!identical(candidate('#ccc'), '#CCC')){quit('no', 1)}
}
test_humaneval()
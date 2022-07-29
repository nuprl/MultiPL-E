# Given a string text, replace all spaces in it with underscores, 
# and if a string has more than 2 consecutive spaces, 
# then replace all consecutive spaces with - 
# fix_spaces("Example") == "Example"
# fix_spaces("Example 1") == "Example_1"
# fix_spaces(" Example 2") == "_Example_2"
# fix_spaces(" Example   3") == "_Example-3"
fix_spaces <- function(text) {
    # your code here
    return(gsub(" ", "_", text))
}


test_humaneval <- function() {
candidate <- fix_spaces
    if(!identical(candidate('Example'), 'Example')){quit('no', 1)}
    if(!identical(candidate('Mudasir Hanif '), 'Mudasir_Hanif_')){quit('no', 1)}
    if(!identical(candidate('Yellow Yellow  Dirty  Fellow'), 'Yellow_Yellow__Dirty__Fellow')){quit('no', 1)}
    if(!identical(candidate('Exa   mple'), 'Exa-mple')){quit('no', 1)}
    if(!identical(candidate('   Exa 1 2 2 mple'), '-Exa_1_2_2_mple')){quit('no', 1)}
}
test_humaneval()
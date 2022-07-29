# Add two numbers x and y
-- >>> add(2, 3)
-- 5
-- >>> add(5, 7)
-- 12
add <- function(x, y)
{
    return(x + y)

test_humaneval <- function() {
candidate <- add
    if(!identical(candidate(0, 1), 1)){quit('no', 1)}
    if(!identical(candidate(1, 0), 1)){quit('no', 1)}
    if(!identical(candidate(2, 3), 5)){quit('no', 1)}
    if(!identical(candidate(5, 7), 12)){quit('no', 1)}
    if(!identical(candidate(7, 5), 12)){quit('no', 1)}
}
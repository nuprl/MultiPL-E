# Return sorted unique common elements for two lists.
-- >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
-- [1, 5, 653]
-- >>> common([5, 3, 2, 8], [3, 2])
-- [2, 3]
common <- function(l1, l2)
{
    # Convert lists to sets.
    s1 <- set(l1)
    s2 <- set(l2)
    
    # Find common elements.
    common <- set(s1) & set(s2)
    
    # Convert back to lists.
    return(list(common))

test_humaneval <- function() {
candidate <- common
    if(!identical(candidate(c(1, 4, 3, 34, 653, 2, 5), c(5, 7, 1, 5, 9, 653, 121)), c(1, 5, 653))){quit('no', 1)}
    if(!identical(candidate(c(5, 3, 2, 8), c(3, 2)), c(2, 3))){quit('no', 1)}
    if(!identical(candidate(c(4, 3, 2, 8), c(3, 2, 4)), c(2, 3, 4))){quit('no', 1)}
    if(!identical(candidate(c(4, 3, 2, 8), c()), c())){quit('no', 1)}
}
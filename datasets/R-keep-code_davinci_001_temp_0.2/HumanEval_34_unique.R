# Return sorted unique elements in a list
-- >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
-- [0, 2, 3, 5, 9, 123]
unique <- function(l)
{
    unique <- vector()
    for (i in l)
    {
        if (!(i %in% unique))
        {
            unique <- c(unique, i)
        }
    }
    return(unique)

test_humaneval <- function() {
candidate <- unique
    if(!identical(candidate(c(5, 3, 5, 2, 3, 3, 9, 0, 123)), c(0, 2, 3, 5, 9, 123))){quit('no', 1)}
}
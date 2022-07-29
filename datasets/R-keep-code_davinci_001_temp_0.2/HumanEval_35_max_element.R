# Return maximum element in the list.
-- >>> max_element([1, 2, 3])
-- 3
-- >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
-- 123
max_element <- function(l)
{
    max_elem <- l[1]
    for (elem in l)
    {
        if (elem > max_elem)
        {
            max_elem <- elem
        }
    }
    return(max_elem)
}
max_element([1, 2, 3])
max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])


test_humaneval <- function() {
candidate <- max_element
    if(!identical(candidate(c(1, 2, 3)), 3)){quit('no', 1)}
    if(!identical(candidate(c(5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10)), 124)){quit('no', 1)}
}
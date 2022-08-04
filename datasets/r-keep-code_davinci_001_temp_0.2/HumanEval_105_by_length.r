# Given an array of integers, sort the integers that are between 1 and 9 inclusive,
# reverse the resulting array, and then replace each digit by its corresponding name from
# "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
# For example:
# >>> by_length([2, 1, 1, 4, 5, 8, 2, 3])   
# ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
# If the array is empty, return an empty array:
# >>> by_length([])
# []
# If the array has any strange number ignore it:
# >>> by_length([1, -1 , 55]) 
# ['One']
by_length <- function(arr) {
    if (length(arr) == 0) {
        return(arr)
    }
    else {
        arr <- sort(arr)
        arr <- arr[arr > 0 & arr < 10]
        arr <- sort(arr, decreasing = TRUE)
        arr <- as.character(arr)
        arr <- paste(arr, collapse = "")
        arr <- strsplit(arr, "")[[1]]
        arr <- sapply(arr, function(x) {
            switch(x,
                  One = "One",
                  Two = "Two",
                  Three = "Three",
                  Four = "Four",
                  Five = "Five",
                  Six = "Six",
                  Seven = "Seven",
                  Eight = "Eight",
                  Nine = "Nine")
        })
        return(arr)
    }
}


test_humaneval <- function() {
candidate <- by_length
    if(!identical(candidate(c(2, 1, 1, 4, 5, 8, 2, 3)), list('Eight', 'Five', 'Four', 'Three', 'Two', 'Two', 'One', 'One'))){quit('no', 1)}
    if(!identical(candidate(c()), list())){quit('no', 1)}
    if(!identical(candidate(c(1, -1, 55)), list('One'))){quit('no', 1)}
    if(!identical(candidate(c(1, -1, 3, 2)), list('Three', 'Two', 'One'))){quit('no', 1)}
    if(!identical(candidate(c(9, 4, 8)), list('Nine', 'Eight', 'Four'))){quit('no', 1)}
}
test_humaneval()
# You're a hungry rabbit, and you already have eaten a certain number of carrots,
# but now you need to eat more carrots to complete the day's meals.
# you should return an array of [ total number of eaten carrots after your meals,
# the number of carrots left after your meals ]
# if there are not enough remaining carrots, you will eat all remaining carrots, but will still be hungry.
# Example:
# * eat(5, 6, 10) -> [11, 4]
# * eat(4, 8, 9) -> [12, 1]
# * eat(1, 10, 10) -> [11, 0]
# * eat(2, 11, 5) -> [7, 0]
# Variables:
# @number : integer
# the number of carrots that you have eaten.
# @need : integer
# the number of carrots that you need to eat.
# @remaining : integer
# the number of remaining carrots thet exist in stock
# Constrain:
# * 0 <= number <= 1000
# * 0 <= need <= 1000
# * 0 <= remaining <= 1000
# Have fun :)
eat <- function(number, need, remaining) {
  if (number >= need) {
    return(c(number - need, remaining))
  } else {
    return(c(0, remaining - (need - number)))
  }
}


test_humaneval <- function() {
candidate <- eat
    if(!identical(candidate(5, 6, 10), c(11, 4))){quit('no', 1)}
    if(!identical(candidate(4, 8, 9), c(12, 1))){quit('no', 1)}
    if(!identical(candidate(1, 10, 10), c(11, 0))){quit('no', 1)}
    if(!identical(candidate(2, 11, 5), c(7, 0))){quit('no', 1)}
    if(!identical(candidate(4, 5, 7), c(9, 2))){quit('no', 1)}
    if(!identical(candidate(4, 5, 1), c(5, 0))){quit('no', 1)}
}
test_humaneval()
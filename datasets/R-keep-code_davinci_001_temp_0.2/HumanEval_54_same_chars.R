# Check if two words have the same characters.
-- >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
-- True
-- >>> same_chars('abcd', 'dddddddabc')
-- True
-- >>> same_chars('dddddddabc', 'abcd')
-- True
-- >>> same_chars('eabcd', 'dddddddabc')
-- False
-- >>> same_chars('abcd', 'dddddddabce')
-- False
-- >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
-- False
same_chars <- function(s0, s1)
{
    return(all(s0 %in% s1) & all(s1 %in% s0))

test_humaneval <- function() {
candidate <- same_chars
    if(!identical(candidate('eabcdzzzz', 'dddzzzzzzzddeddabc'), true)){quit('no', 1)}
    if(!identical(candidate('abcd', 'dddddddabc'), true)){quit('no', 1)}
    if(!identical(candidate('dddddddabc', 'abcd'), true)){quit('no', 1)}
    if(!identical(candidate('eabcd', 'dddddddabc'), false)){quit('no', 1)}
    if(!identical(candidate('abcd', 'dddddddabcf'), false)){quit('no', 1)}
    if(!identical(candidate('eabcdzzzz', 'dddzzzzzzzddddabc'), false)){quit('no', 1)}
    if(!identical(candidate('aabb', 'aaccc'), false)){quit('no', 1)}
}
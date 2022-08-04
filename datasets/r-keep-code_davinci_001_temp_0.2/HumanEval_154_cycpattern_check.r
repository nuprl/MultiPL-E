# You are given 2 words. You need to return True if the second word or any of its rotations is a substring in the first word
# >>> cycpattern_check("abcd","abd") 
# False
# >>> cycpattern_check("hello","ell") 
# True
# >>> cycpattern_check("whassup","psus") 
# False
# >>> cycpattern_check("abab","baa") 
# True
# >>> cycpattern_check("efef","eeff") 
# False
# >>> cycpattern_check("himenss","simen") 
# True
cycpattern_check <- function(a, b) {
    for (i in 1:length(b)) {
        if (grepl(b[i], a)) {
            return(TRUE)
        }
    }
    return(FALSE)
}
cycpattern_check("abcd","abd")
cycpattern_check("hello","ell")
cycpattern_check("whassup","psus")
cycpattern_check("abab","baa")
cycpattern_check("efef","eeff")
cycpattern_check("himenss","simen")


test_humaneval <- function() {
candidate <- cycpattern_check
    if(!identical(candidate('xyzw', 'xyw'), FALSE)){quit('no', 1)}
    if(!identical(candidate('yello', 'ell'), TRUE)){quit('no', 1)}
    if(!identical(candidate('whattup', 'ptut'), FALSE)){quit('no', 1)}
    if(!identical(candidate('efef', 'fee'), TRUE)){quit('no', 1)}
    if(!identical(candidate('abab', 'aabb'), FALSE)){quit('no', 1)}
    if(!identical(candidate('winemtt', 'tinem'), TRUE)){quit('no', 1)}
}
test_humaneval()
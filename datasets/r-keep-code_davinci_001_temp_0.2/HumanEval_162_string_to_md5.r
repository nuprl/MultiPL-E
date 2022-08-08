# Given a string 'text', return its md5 hash equivalent string.
# If 'text' is an empty string, return None.
# >>> string_to_md5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
string_to_md5 <- function(text) {
    if (length(text) == 0) {
        return(NULL)
    }
    return(md5(text))
}


test_humaneval <- function() {
candidate <- string_to_md5
    if(!identical(candidate('Hello world'), '3e25960a79dbc69b674cd4ec67a72c62')){quit('no', 1)}
    if(!identical(candidate(''), NULL)){quit('no', 1)}
    if(!identical(candidate('A B C'), '0ef78513b0cb8cef12743f5aeb35f888')){quit('no', 1)}
    if(!identical(candidate('password'), '5f4dcc3b5aa765d61d8327deb882cf99')){quit('no', 1)}
}
test_humaneval()
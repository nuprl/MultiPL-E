# Create a function which takes a string representing a file's name, and returns
# 'Yes' if the the file's name is valid, and returns 'No' otherwise.
# A file's name is considered to be valid if and only if all the following conditions 
# are met:
# - There should not be more than three digits ('0'-'9') in the file's name.
# - The file's name contains exactly one dot '.'
# - The substring before the dot should not be empty, and it starts with a letter from 
# the latin alphapet ('a'-'z' and 'A'-'Z').
# - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
# Examples:
# >>> file_name_check("example.txt")
# 'Yes'
# >>> file_name_check("1example.dll")
# 'No'
file_name_check <- function(file_name) {
    # YOUR CODE HERE
    if(grepl('.txt$', file_name) == 0) {
        return('No')
    }
    if(grepl('[0-9]{4}', file_name) == 1) {
        return('No')
    }
    if(grepl('^[a-zA-Z]', file_name) == 0) {
        return('No')
    }
    if(grepl('[.]', file_name) == 0) {
        return('No')
    }
    if(grepl('[.]txt$', file_name) == 0) {
        return('No')
    }
    if(grepl('[.]exe$', file_name) == 0) {
        return('No')
    }
    if(grepl('[.]dll$', file_name) == 0) {
        return('No')
    }
    return('Yes')
}
file_name_check("example.txt")
file_name_check("1example.dll")
file_name_check("example.exe")
file_name_check("example.dll")
file_name_check("example.dll")
file_name_check("example.txt")
file_name_check("example.exe")
file_name_check("example.dll")
file_name_check("example.dll")
file_name_check("example.txt")
file_name_check("example.exe")
file_name_check("example.dll")
file_name_check("example.dll")
file_name_check("example.txt")
file_name_check("example.exe")
file_name_check("example.dll")
file_name_check("example.dll")
file_name_check("example.txt")
file_name_check("example.exe")
file_name_check("example.dll")
file_name_check("example.dll")
file_name_check("example.txt")
file_name_check("example.exe")
file_name_check("example.dll")
file_name_check("example.dll")

test_humaneval <- function() {
candidate <- file_name_check
    if(!identical(candidate('example.txt'), 'Yes')){quit('no', 1)}
    if(!identical(candidate('1example.dll'), 'No')){quit('no', 1)}
    if(!identical(candidate('s1sdf3.asd'), 'No')){quit('no', 1)}
    if(!identical(candidate('K.dll'), 'Yes')){quit('no', 1)}
    if(!identical(candidate('MY16FILE3.exe'), 'Yes')){quit('no', 1)}
    if(!identical(candidate('His12FILE94.exe'), 'No')){quit('no', 1)}
    if(!identical(candidate('_Y.txt'), 'No')){quit('no', 1)}
    if(!identical(candidate('?aREYA.exe'), 'No')){quit('no', 1)}
    if(!identical(candidate('/this_is_valid.dll'), 'No')){quit('no', 1)}
    if(!identical(candidate('this_is_valid.wow'), 'No')){quit('no', 1)}
    if(!identical(candidate('this_is_valid.txt'), 'Yes')){quit('no', 1)}
    if(!identical(candidate('this_is_valid.txtexe'), 'No')){quit('no', 1)}
    if(!identical(candidate('#this2_i4s_5valid.ten'), 'No')){quit('no', 1)}
    if(!identical(candidate('@this1_is6_valid.exe'), 'No')){quit('no', 1)}
    if(!identical(candidate('this_is_12valid.6exe4.txt'), 'No')){quit('no', 1)}
    if(!identical(candidate('all.exe.txt'), 'No')){quit('no', 1)}
    if(!identical(candidate('I563_No.exe'), 'Yes')){quit('no', 1)}
    if(!identical(candidate('Is3youfault.txt'), 'Yes')){quit('no', 1)}
    if(!identical(candidate('no_one#knows.dll'), 'Yes')){quit('no', 1)}
    if(!identical(candidate('1I563_Yes3.exe'), 'No')){quit('no', 1)}
    if(!identical(candidate('I563_Yes3.txtt'), 'No')){quit('no', 1)}
    if(!identical(candidate('final..txt'), 'No')){quit('no', 1)}
    if(!identical(candidate('final132'), 'No')){quit('no', 1)}
    if(!identical(candidate('_f4indsartal132.'), 'No')){quit('no', 1)}
    if(!identical(candidate('.txt'), 'No')){quit('no', 1)}
    if(!identical(candidate('s.'), 'No')){quit('no', 1)}
}
test_humaneval()
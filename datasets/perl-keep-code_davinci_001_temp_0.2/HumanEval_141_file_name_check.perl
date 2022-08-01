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
# file_name_check("example.txt") # => 'Yes'
# file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
sub file_name_check {
    my($file_name) = @_;
    my $result = 'Yes';
    my $count_of_digits = 0;
    my $dot_index = -1;
    my $substring_before_dot = '';
    my $substring_after_dot = '';
    my $substring_after_dot_is_valid = 0;
    my $substring_before_dot_is_valid = 0;
    my $substring_before_dot_is_empty = 0;
    my $substring_before_dot_starts_with_letter = 0;
    my $substring_after_dot_is_valid_list = 0;
    my $substring_after_dot_is_valid_list_1 = 0;
    my $substring_after_dot_is_valid_list_2 = 0;
    my $substring_after_dot_is_valid_list_3 = 0;
    my $substring_after_dot_is_valid_list_4 = 0;
    my $substring_after_dot_is_valid_list_5 = 0;
    my $substring_after_dot_is_valid_list_6 = 0;
    my $substring_after_dot_is_valid_list_7 = 0;
    my $substring_after_dot_is_valid_list_8 = 0;
    my $substring_after_dot_is_valid_list_9 = 0;
    my $substring_after_dot_is_valid_list_10 = 0;
    my $substring_after_dot_is_valid_list_11 = 0;
    my $substring_after_dot_is_valid_list_12 = 0;
    my $substring_after_dot_is_valid_list_13 = 0;
    my $substring_after_dot_is_valid_list_14 = 0;
    my $substring_after_dot_is_valid_list_15 = 0;
    my $substring_after_dot_is_valid_list_16 = 0;
    my $substring_after_dot_is_valid_

use Data::Compare;


sub testhumaneval {
    my $candidate = \&file_name_check;
        if(Compare($candidate->("example.txt"),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("1example.dll"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("s1sdf3.asd"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("K.dll"),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("MY16FILE3.exe"),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("His12FILE94.exe"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("_Y.txt"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("?aREYA.exe"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("/this_is_valid.dll"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("this_is_valid.wow"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("this_is_valid.txt"),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("this_is_valid.txtexe"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("#this2_i4s_5valid.ten"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("@this1_is6_valid.exe"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("this_is_12valid.6exe4.txt"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("all.exe.txt"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("I563_No.exe"),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("Is3youfault.txt"),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("no_one#knows.dll"),"Yes")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("1I563_Yes3.exe"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("I563_Yes3.txtt"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("final..txt"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("final132"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("_f4indsartal132."),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->(".txt"),"No")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->("s."),"No")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
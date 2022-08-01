# Given an array of integers, sort the integers that are between 1 and 9 inclusive,
# reverse the resulting array, and then replace each digit by its corresponding name from
# "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
# For example:
# arr = [2, 1, 1, 4, 5, 8, 2, 3]   
# -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8] 
# -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
# return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
# If the array is empty, return an empty array:
# arr = []
# return []
# If the array has any strange number ignore it:
# arr = [1, -1 , 55] 
# -> sort arr -> [-1, 1, 55]
# -> reverse arr -> [55, 1, -1]
# return = ['One']
sub by_length {
    my($arr) = @_;
    my @sorted = sort { length($a) <=> length($b) } @$arr;
    return \@sorted;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&by_length;
    my @arg0 = (2, 1, 1, 4, 5, 8, 2, 3);
    my @arg1 = ("Eight", "Five", "Four", "Three", "Two", "Two", "One", "One");
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 1, 1, 4, 5, 8, 2, 3);
    my @arg1 = ("Eight", "Five", "Four", "Three", "Two", "Two", "One", "One");
    my @arg2 = ();
    my @arg3 = ();
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 1, 1, 4, 5, 8, 2, 3);
    my @arg1 = ("Eight", "Five", "Four", "Three", "Two", "Two", "One", "One");
    my @arg2 = ();
    my @arg3 = ();
    my @arg4 = (1, -1, 55);
    my @arg5 = ("One");
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 1, 1, 4, 5, 8, 2, 3);
    my @arg1 = ("Eight", "Five", "Four", "Three", "Two", "Two", "One", "One");
    my @arg2 = ();
    my @arg3 = ();
    my @arg4 = (1, -1, 55);
    my @arg5 = ("One");
    my @arg6 = (1, -1, 3, 2);
    my @arg7 = ("Three", "Two", "One");
    if(Compare($candidate->(\@arg6),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 1, 1, 4, 5, 8, 2, 3);
    my @arg1 = ("Eight", "Five", "Four", "Three", "Two", "Two", "One", "One");
    my @arg2 = ();
    my @arg3 = ();
    my @arg4 = (1, -1, 55);
    my @arg5 = ("One");
    my @arg6 = (1, -1, 3, 2);
    my @arg7 = ("Three", "Two", "One");
    my @arg8 = (9, 4, 8);
    my @arg9 = ("Nine", "Eight", "Four");
    if(Compare($candidate->(\@arg8),\@arg9)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
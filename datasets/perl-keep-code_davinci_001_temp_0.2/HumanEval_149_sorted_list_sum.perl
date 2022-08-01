# Write a function that accepts a list of strings as a parameter,
# deletes the strings that have odd lengths from it,
# and returns the resulted list with a sorted order,
# The list is always a list of strings and never an array of numbers,
# and it may contain duplicates.
# The order of the list should be ascending by length of each word, and you
# should return the list sorted by that rule.
# If two words have the same length, sort the list alphabetically.
# The function should return a list of strings in sorted order.
# You may assume that all words will have the same length.
# For example:
# assert list_sort(["aa", "a", "aaa"]) => ["aa"]
# assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
sub sorted_list_sum {
    my($lst) = @_;
    my @sorted_list = sort { length($a) <=> length($b) || $a cmp $b } @$lst;
    return \@sorted_list;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&sorted_list_sum;
    my @arg0 = ("aa", "a", "aaa");
    my @arg1 = ("aa");
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("aa", "a", "aaa");
    my @arg1 = ("aa");
    my @arg2 = ("school", "AI", "asdf", "b");
    my @arg3 = ("AI", "asdf", "school");
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("aa", "a", "aaa");
    my @arg1 = ("aa");
    my @arg2 = ("school", "AI", "asdf", "b");
    my @arg3 = ("AI", "asdf", "school");
    my @arg4 = ("d", "b", "c", "a");
    my @arg5 = ();
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("aa", "a", "aaa");
    my @arg1 = ("aa");
    my @arg2 = ("school", "AI", "asdf", "b");
    my @arg3 = ("AI", "asdf", "school");
    my @arg4 = ("d", "b", "c", "a");
    my @arg5 = ();
    my @arg6 = ("d", "dcba", "abcd", "a");
    my @arg7 = ("abcd", "dcba");
    if(Compare($candidate->(\@arg6),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("aa", "a", "aaa");
    my @arg1 = ("aa");
    my @arg2 = ("school", "AI", "asdf", "b");
    my @arg3 = ("AI", "asdf", "school");
    my @arg4 = ("d", "b", "c", "a");
    my @arg5 = ();
    my @arg6 = ("d", "dcba", "abcd", "a");
    my @arg7 = ("abcd", "dcba");
    my @arg8 = ("AI", "ai", "au");
    my @arg9 = ("AI", "ai", "au");
    if(Compare($candidate->(\@arg8),\@arg9)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("aa", "a", "aaa");
    my @arg1 = ("aa");
    my @arg2 = ("school", "AI", "asdf", "b");
    my @arg3 = ("AI", "asdf", "school");
    my @arg4 = ("d", "b", "c", "a");
    my @arg5 = ();
    my @arg6 = ("d", "dcba", "abcd", "a");
    my @arg7 = ("abcd", "dcba");
    my @arg8 = ("AI", "ai", "au");
    my @arg9 = ("AI", "ai", "au");
    my @arg10 = ("a", "b", "b", "c", "c", "a");
    my @arg11 = ();
    if(Compare($candidate->(\@arg10),\@arg11)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ("aa", "a", "aaa");
    my @arg1 = ("aa");
    my @arg2 = ("school", "AI", "asdf", "b");
    my @arg3 = ("AI", "asdf", "school");
    my @arg4 = ("d", "b", "c", "a");
    my @arg5 = ();
    my @arg6 = ("d", "dcba", "abcd", "a");
    my @arg7 = ("abcd", "dcba");
    my @arg8 = ("AI", "ai", "au");
    my @arg9 = ("AI", "ai", "au");
    my @arg10 = ("a", "b", "b", "c", "c", "a");
    my @arg11 = ();
    my @arg12 = ("aaaa", "bbbb", "dd", "cc");
    my @arg13 = ("cc", "dd", "aaaa", "bbbb");
    if(Compare($candidate->(\@arg12),\@arg13)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
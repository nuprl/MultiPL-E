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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&sorted_list_sum;
        if(eq_deeply($candidate->(["aa", "a", "aaa"]),["aa"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["school", "AI", "asdf", "b"]),["AI", "asdf", "school"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["d", "b", "c", "a"]),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["d", "dcba", "abcd", "a"]),["abcd", "dcba"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["AI", "ai", "au"]),["AI", "ai", "au"])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["a", "b", "b", "c", "c", "a"]),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->(["aaaa", "bbbb", "dd", "cc"]),["cc", "dd", "aaaa", "bbbb"])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
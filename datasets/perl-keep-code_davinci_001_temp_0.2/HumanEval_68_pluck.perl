# "Given an array representing a branch of a tree that has non-negative integer nodes
# your task is to pluck one of the nodes and return it.
# The plucked node should be the node with the smallest even value.
# If multiple nodes with the same smallest even value are found return the node that has smallest index.
# The plucked node should be returned in a list, [ smalest_value, its index ],
# If there are no even values or the given array is empty, return [].
# Example 1:
# Input: [4,2,3]
# Output: [2, 1]
# Explanation: 2 has the smallest even value, and 2 has the smallest index.
# Example 2:
# Input: [1,2,3]
# Output: [2, 1]
# Explanation: 2 has the smallest even value, and 2 has the smallest index. 
# Example 3:
# Input: []
# Output: []
# Example 4:
# Input: [5, 0, 3, 0, 4, 2]
# Output: [0, 1]
# Explanation: 0 is the smallest value, but  there are two zeros,
# so we will choose the first zero, which has the smallest index.
# Constraints:
# * 1 <= nodes.length <= 10000
# * 0 <= node.value
sub pluck {
    my($arr) = @_;
    my $min = $arr->[0];
    my $min_index = 0;
    for my $i (1..$#$arr) {
        if ($arr->[$i] < $min) {
            $min = $arr->[$i];
            $min_index = $i;
        }
    }
    return [$min, $min_index];
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&pluck;
    my @arg0 = (4, 2, 3);
    my @arg1 = (2, 1);
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4, 2, 3);
    my @arg1 = (2, 1);
    my @arg2 = (1, 2, 3);
    my @arg3 = (2, 1);
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4, 2, 3);
    my @arg1 = (2, 1);
    my @arg2 = (1, 2, 3);
    my @arg3 = (2, 1);
    my @arg4 = ();
    my @arg5 = ();
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4, 2, 3);
    my @arg1 = (2, 1);
    my @arg2 = (1, 2, 3);
    my @arg3 = (2, 1);
    my @arg4 = ();
    my @arg5 = ();
    my @arg6 = (5, 0, 3, 0, 4, 2);
    my @arg7 = (0, 1);
    if(Compare($candidate->(\@arg6),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4, 2, 3);
    my @arg1 = (2, 1);
    my @arg2 = (1, 2, 3);
    my @arg3 = (2, 1);
    my @arg4 = ();
    my @arg5 = ();
    my @arg6 = (5, 0, 3, 0, 4, 2);
    my @arg7 = (0, 1);
    my @arg8 = (1, 2, 3, 0, 5, 3);
    my @arg9 = (0, 3);
    if(Compare($candidate->(\@arg8),\@arg9)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4, 2, 3);
    my @arg1 = (2, 1);
    my @arg2 = (1, 2, 3);
    my @arg3 = (2, 1);
    my @arg4 = ();
    my @arg5 = ();
    my @arg6 = (5, 0, 3, 0, 4, 2);
    my @arg7 = (0, 1);
    my @arg8 = (1, 2, 3, 0, 5, 3);
    my @arg9 = (0, 3);
    my @arg10 = (5, 4, 8, 4, 8);
    my @arg11 = (4, 1);
    if(Compare($candidate->(\@arg10),\@arg11)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4, 2, 3);
    my @arg1 = (2, 1);
    my @arg2 = (1, 2, 3);
    my @arg3 = (2, 1);
    my @arg4 = ();
    my @arg5 = ();
    my @arg6 = (5, 0, 3, 0, 4, 2);
    my @arg7 = (0, 1);
    my @arg8 = (1, 2, 3, 0, 5, 3);
    my @arg9 = (0, 3);
    my @arg10 = (5, 4, 8, 4, 8);
    my @arg11 = (4, 1);
    my @arg12 = (7, 6, 7, 1);
    my @arg13 = (6, 1);
    if(Compare($candidate->(\@arg12),\@arg13)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (4, 2, 3);
    my @arg1 = (2, 1);
    my @arg2 = (1, 2, 3);
    my @arg3 = (2, 1);
    my @arg4 = ();
    my @arg5 = ();
    my @arg6 = (5, 0, 3, 0, 4, 2);
    my @arg7 = (0, 1);
    my @arg8 = (1, 2, 3, 0, 5, 3);
    my @arg9 = (0, 3);
    my @arg10 = (5, 4, 8, 4, 8);
    my @arg11 = (4, 1);
    my @arg12 = (7, 6, 7, 1);
    my @arg13 = (6, 1);
    my @arg14 = (7, 9, 7, 1);
    my @arg15 = ();
    if(Compare($candidate->(\@arg14),\@arg15)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
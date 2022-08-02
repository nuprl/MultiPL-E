# Given an array arr of integers and a positive integer k, return a sorted list 
# of length k with the maximum k numbers in arr.
# Example 1:
# Input: arr = [-3, -4, 5], k = 3
# Output: [-4, -3, 5]
# Example 2:
# Input: arr = [4, -4, 4], k = 2
# Output: [4, 4]
# Example 3:
# Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
# Output: [2]
# Note:
# 1. The length of the array will be in the range of [1, 1000].
# 2. The elements in the array will be in the range of [-1000, 1000].
# 3. 0 <= k <= len(arr)
sub maximum {
    my($arr, $k) = @_;
    my @sorted = sort {$b <=> $a} @$arr;
    return @sorted[0..$k-1];
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&maximum;
    my @arg0 = (-3, -4, 5);
    my @arg1 = (-4, -3, 5);
    if(Compare($candidate->(\@arg0, 3),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (-3, -4, 5);
    my @arg1 = (-4, -3, 5);
    my @arg2 = (4, -4, 4);
    my @arg3 = (4, 4);
    if(Compare($candidate->(\@arg2, 2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (-3, -4, 5);
    my @arg1 = (-4, -3, 5);
    my @arg2 = (4, -4, 4);
    my @arg3 = (4, 4);
    my @arg4 = (-3, 2, 1, 2, -1, -2, 1);
    my @arg5 = (2);
    if(Compare($candidate->(\@arg4, 1),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (-3, -4, 5);
    my @arg1 = (-4, -3, 5);
    my @arg2 = (4, -4, 4);
    my @arg3 = (4, 4);
    my @arg4 = (-3, 2, 1, 2, -1, -2, 1);
    my @arg5 = (2);
    my @arg6 = (123, -123, 20, 0, 1, 2, -3);
    my @arg7 = (2, 20, 123);
    if(Compare($candidate->(\@arg6, 3),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (-3, -4, 5);
    my @arg1 = (-4, -3, 5);
    my @arg2 = (4, -4, 4);
    my @arg3 = (4, 4);
    my @arg4 = (-3, 2, 1, 2, -1, -2, 1);
    my @arg5 = (2);
    my @arg6 = (123, -123, 20, 0, 1, 2, -3);
    my @arg7 = (2, 20, 123);
    my @arg8 = (-123, 20, 0, 1, 2, -3);
    my @arg9 = (0, 1, 2, 20);
    if(Compare($candidate->(\@arg8, 4),\@arg9)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (-3, -4, 5);
    my @arg1 = (-4, -3, 5);
    my @arg2 = (4, -4, 4);
    my @arg3 = (4, 4);
    my @arg4 = (-3, 2, 1, 2, -1, -2, 1);
    my @arg5 = (2);
    my @arg6 = (123, -123, 20, 0, 1, 2, -3);
    my @arg7 = (2, 20, 123);
    my @arg8 = (-123, 20, 0, 1, 2, -3);
    my @arg9 = (0, 1, 2, 20);
    my @arg10 = (5, 15, 0, 3, -13, -8, 0);
    my @arg11 = (-13, -8, 0, 0, 3, 5, 15);
    if(Compare($candidate->(\@arg10, 7),\@arg11)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (-3, -4, 5);
    my @arg1 = (-4, -3, 5);
    my @arg2 = (4, -4, 4);
    my @arg3 = (4, 4);
    my @arg4 = (-3, 2, 1, 2, -1, -2, 1);
    my @arg5 = (2);
    my @arg6 = (123, -123, 20, 0, 1, 2, -3);
    my @arg7 = (2, 20, 123);
    my @arg8 = (-123, 20, 0, 1, 2, -3);
    my @arg9 = (0, 1, 2, 20);
    my @arg10 = (5, 15, 0, 3, -13, -8, 0);
    my @arg11 = (-13, -8, 0, 0, 3, 5, 15);
    my @arg12 = (-1, 0, 2, 5, 3, -10);
    my @arg13 = (3, 5);
    if(Compare($candidate->(\@arg12, 2),\@arg13)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (-3, -4, 5);
    my @arg1 = (-4, -3, 5);
    my @arg2 = (4, -4, 4);
    my @arg3 = (4, 4);
    my @arg4 = (-3, 2, 1, 2, -1, -2, 1);
    my @arg5 = (2);
    my @arg6 = (123, -123, 20, 0, 1, 2, -3);
    my @arg7 = (2, 20, 123);
    my @arg8 = (-123, 20, 0, 1, 2, -3);
    my @arg9 = (0, 1, 2, 20);
    my @arg10 = (5, 15, 0, 3, -13, -8, 0);
    my @arg11 = (-13, -8, 0, 0, 3, 5, 15);
    my @arg12 = (-1, 0, 2, 5, 3, -10);
    my @arg13 = (3, 5);
    my @arg14 = (1, 0, 5, -7);
    my @arg15 = (5);
    if(Compare($candidate->(\@arg14, 1),\@arg15)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (-3, -4, 5);
    my @arg1 = (-4, -3, 5);
    my @arg2 = (4, -4, 4);
    my @arg3 = (4, 4);
    my @arg4 = (-3, 2, 1, 2, -1, -2, 1);
    my @arg5 = (2);
    my @arg6 = (123, -123, 20, 0, 1, 2, -3);
    my @arg7 = (2, 20, 123);
    my @arg8 = (-123, 20, 0, 1, 2, -3);
    my @arg9 = (0, 1, 2, 20);
    my @arg10 = (5, 15, 0, 3, -13, -8, 0);
    my @arg11 = (-13, -8, 0, 0, 3, 5, 15);
    my @arg12 = (-1, 0, 2, 5, 3, -10);
    my @arg13 = (3, 5);
    my @arg14 = (1, 0, 5, -7);
    my @arg15 = (5);
    my @arg16 = (4, -4);
    my @arg17 = (-4, 4);
    if(Compare($candidate->(\@arg16, 2),\@arg17)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (-3, -4, 5);
    my @arg1 = (-4, -3, 5);
    my @arg2 = (4, -4, 4);
    my @arg3 = (4, 4);
    my @arg4 = (-3, 2, 1, 2, -1, -2, 1);
    my @arg5 = (2);
    my @arg6 = (123, -123, 20, 0, 1, 2, -3);
    my @arg7 = (2, 20, 123);
    my @arg8 = (-123, 20, 0, 1, 2, -3);
    my @arg9 = (0, 1, 2, 20);
    my @arg10 = (5, 15, 0, 3, -13, -8, 0);
    my @arg11 = (-13, -8, 0, 0, 3, 5, 15);
    my @arg12 = (-1, 0, 2, 5, 3, -10);
    my @arg13 = (3, 5);
    my @arg14 = (1, 0, 5, -7);
    my @arg15 = (5);
    my @arg16 = (4, -4);
    my @arg17 = (-4, 4);
    my @arg18 = (-10, 10);
    my @arg19 = (-10, 10);
    if(Compare($candidate->(\@arg18, 2),\@arg19)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (-3, -4, 5);
    my @arg1 = (-4, -3, 5);
    my @arg2 = (4, -4, 4);
    my @arg3 = (4, 4);
    my @arg4 = (-3, 2, 1, 2, -1, -2, 1);
    my @arg5 = (2);
    my @arg6 = (123, -123, 20, 0, 1, 2, -3);
    my @arg7 = (2, 20, 123);
    my @arg8 = (-123, 20, 0, 1, 2, -3);
    my @arg9 = (0, 1, 2, 20);
    my @arg10 = (5, 15, 0, 3, -13, -8, 0);
    my @arg11 = (-13, -8, 0, 0, 3, 5, 15);
    my @arg12 = (-1, 0, 2, 5, 3, -10);
    my @arg13 = (3, 5);
    my @arg14 = (1, 0, 5, -7);
    my @arg15 = (5);
    my @arg16 = (4, -4);
    my @arg17 = (-4, 4);
    my @arg18 = (-10, 10);
    my @arg19 = (-10, 10);
    my @arg20 = (1, 2, 3, -23, 243, -400, 0);
    my @arg21 = ();
    if(Compare($candidate->(\@arg20, 0),\@arg21)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
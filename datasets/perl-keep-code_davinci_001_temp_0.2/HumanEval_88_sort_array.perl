# Given an array of non-negative integers, return a copy of the given array after sorting,
# you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
# or sort it in descending order if the sum( first index value, last index value) is even.
# Note:
# * don't change the given array.
# Examples:
# * sort_array([]) => []
# * sort_array([5]) => [5]
# * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
# * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
sub sort_array {
    my($array) = @_;
    my $sum = 0;
    for my $i (0..$#$array) {
        $sum += $array->[$i];
    }
    if ($sum % 2 == 0) {
        @$array = sort {$b <=> $a} @$array;
    } else {
        @$array = sort {$a <=> $b} @$array;
    }
    return $array;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&sort_array;
    my @arg0 = ();
    my @arg1 = ();
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (5);
    my @arg3 = (5);
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (5);
    my @arg3 = (5);
    my @arg4 = (2, 4, 3, 0, 1, 5);
    my @arg5 = (0, 1, 2, 3, 4, 5);
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (5);
    my @arg3 = (5);
    my @arg4 = (2, 4, 3, 0, 1, 5);
    my @arg5 = (0, 1, 2, 3, 4, 5);
    my @arg6 = (2, 4, 3, 0, 1, 5, 6);
    my @arg7 = (6, 5, 4, 3, 2, 1, 0);
    if(Compare($candidate->(\@arg6),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (5);
    my @arg3 = (5);
    my @arg4 = (2, 4, 3, 0, 1, 5);
    my @arg5 = (0, 1, 2, 3, 4, 5);
    my @arg6 = (2, 4, 3, 0, 1, 5, 6);
    my @arg7 = (6, 5, 4, 3, 2, 1, 0);
    my @arg8 = (2, 1);
    my @arg9 = (1, 2);
    if(Compare($candidate->(\@arg8),\@arg9)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (5);
    my @arg3 = (5);
    my @arg4 = (2, 4, 3, 0, 1, 5);
    my @arg5 = (0, 1, 2, 3, 4, 5);
    my @arg6 = (2, 4, 3, 0, 1, 5, 6);
    my @arg7 = (6, 5, 4, 3, 2, 1, 0);
    my @arg8 = (2, 1);
    my @arg9 = (1, 2);
    my @arg10 = (15, 42, 87, 32, 11, 0);
    my @arg11 = (0, 11, 15, 32, 42, 87);
    if(Compare($candidate->(\@arg10),\@arg11)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = ();
    my @arg1 = ();
    my @arg2 = (5);
    my @arg3 = (5);
    my @arg4 = (2, 4, 3, 0, 1, 5);
    my @arg5 = (0, 1, 2, 3, 4, 5);
    my @arg6 = (2, 4, 3, 0, 1, 5, 6);
    my @arg7 = (6, 5, 4, 3, 2, 1, 0);
    my @arg8 = (2, 1);
    my @arg9 = (1, 2);
    my @arg10 = (15, 42, 87, 32, 11, 0);
    my @arg11 = (0, 11, 15, 32, 42, 87);
    my @arg12 = (21, 14, 23, 11);
    my @arg13 = (23, 21, 14, 11);
    if(Compare($candidate->(\@arg12),\@arg13)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
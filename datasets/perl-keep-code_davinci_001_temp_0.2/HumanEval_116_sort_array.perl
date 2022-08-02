# In this Kata, you have to sort an array of non-negative integers according to
# number of ones in their binary representation in ascending order.
# For similar number of ones, sort based on decimal value.
# It must be implemented like this:
# >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
# >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
# >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
sub sort_array {
    my($arr) = @_;
    my @sorted = sort {
        my $a = unpack("B*", pack("N", $a));
        my $b = unpack("B*", pack("N", $b));
        my $a_ones = $a =~ tr/1//;
        my $b_ones = $b =~ tr/1//;
        if ($a_ones == $b_ones) {
            $a <=> $b;
        } else {
            $a_ones <=> $b_ones;
        }
    } @$arr;
    return \@sorted;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&sort_array;
    my @arg0 = (1, 5, 2, 3, 4);
    my @arg1 = (1, 2, 4, 3, 5);
    if(Compare($candidate->(\@arg0),\@arg1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 5, 2, 3, 4);
    my @arg1 = (1, 2, 4, 3, 5);
    my @arg2 = (-2, -3, -4, -5, -6);
    my @arg3 = (-4, -2, -6, -5, -3);
    if(Compare($candidate->(\@arg2),\@arg3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 5, 2, 3, 4);
    my @arg1 = (1, 2, 4, 3, 5);
    my @arg2 = (-2, -3, -4, -5, -6);
    my @arg3 = (-4, -2, -6, -5, -3);
    my @arg4 = (1, 0, 2, 3, 4);
    my @arg5 = (0, 1, 2, 4, 3);
    if(Compare($candidate->(\@arg4),\@arg5)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 5, 2, 3, 4);
    my @arg1 = (1, 2, 4, 3, 5);
    my @arg2 = (-2, -3, -4, -5, -6);
    my @arg3 = (-4, -2, -6, -5, -3);
    my @arg4 = (1, 0, 2, 3, 4);
    my @arg5 = (0, 1, 2, 4, 3);
    my @arg6 = ();
    my @arg7 = ();
    if(Compare($candidate->(\@arg6),\@arg7)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 5, 2, 3, 4);
    my @arg1 = (1, 2, 4, 3, 5);
    my @arg2 = (-2, -3, -4, -5, -6);
    my @arg3 = (-4, -2, -6, -5, -3);
    my @arg4 = (1, 0, 2, 3, 4);
    my @arg5 = (0, 1, 2, 4, 3);
    my @arg6 = ();
    my @arg7 = ();
    my @arg8 = (2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4);
    my @arg9 = (2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77);
    if(Compare($candidate->(\@arg8),\@arg9)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 5, 2, 3, 4);
    my @arg1 = (1, 2, 4, 3, 5);
    my @arg2 = (-2, -3, -4, -5, -6);
    my @arg3 = (-4, -2, -6, -5, -3);
    my @arg4 = (1, 0, 2, 3, 4);
    my @arg5 = (0, 1, 2, 4, 3);
    my @arg6 = ();
    my @arg7 = ();
    my @arg8 = (2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4);
    my @arg9 = (2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77);
    my @arg10 = (3, 6, 44, 12, 32, 5);
    my @arg11 = (32, 3, 5, 6, 12, 44);
    if(Compare($candidate->(\@arg10),\@arg11)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 5, 2, 3, 4);
    my @arg1 = (1, 2, 4, 3, 5);
    my @arg2 = (-2, -3, -4, -5, -6);
    my @arg3 = (-4, -2, -6, -5, -3);
    my @arg4 = (1, 0, 2, 3, 4);
    my @arg5 = (0, 1, 2, 4, 3);
    my @arg6 = ();
    my @arg7 = ();
    my @arg8 = (2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4);
    my @arg9 = (2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77);
    my @arg10 = (3, 6, 44, 12, 32, 5);
    my @arg11 = (32, 3, 5, 6, 12, 44);
    my @arg12 = (2, 4, 8, 16, 32);
    my @arg13 = (2, 4, 8, 16, 32);
    if(Compare($candidate->(\@arg12),\@arg13)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, 5, 2, 3, 4);
    my @arg1 = (1, 2, 4, 3, 5);
    my @arg2 = (-2, -3, -4, -5, -6);
    my @arg3 = (-4, -2, -6, -5, -3);
    my @arg4 = (1, 0, 2, 3, 4);
    my @arg5 = (0, 1, 2, 4, 3);
    my @arg6 = ();
    my @arg7 = ();
    my @arg8 = (2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4);
    my @arg9 = (2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77);
    my @arg10 = (3, 6, 44, 12, 32, 5);
    my @arg11 = (32, 3, 5, 6, 12, 44);
    my @arg12 = (2, 4, 8, 16, 32);
    my @arg13 = (2, 4, 8, 16, 32);
    my @arg14 = (2, 4, 8, 16, 32);
    my @arg15 = (2, 4, 8, 16, 32);
    if(Compare($candidate->(\@arg14),\@arg15)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
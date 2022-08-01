# Given an array of integers nums, find the minimum sum of any non-empty sub-array
# of nums.
# Example
# minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
# minSubArraySum([-1, -2, -3]) == -6
sub minSubArraySum {
    my($nums) = @_;
    my $min = $nums->[0];
    my $sum = 0;
    for my $i (0..$#$nums) {
        $sum += $nums->[$i];
        $min = $sum if $sum < $min;
        $sum = 0 if $sum > 0;
    }
    return $min;
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&minSubArraySum;
    my @arg0 = (2, 3, 4, 1, 2, 4);
    if(Compare($candidate->(\@arg0),1)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3, 4, 1, 2, 4);
    my @arg1 = (-1, -2, -3);
    if(Compare($candidate->(\@arg1),-6)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3, 4, 1, 2, 4);
    my @arg1 = (-1, -2, -3);
    my @arg2 = (-1, -2, -3, 2, -10);
    if(Compare($candidate->(\@arg2),-14)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3, 4, 1, 2, 4);
    my @arg1 = (-1, -2, -3);
    my @arg2 = (-1, -2, -3, 2, -10);
    my @arg3 = (-9999999999999999);
    if(Compare($candidate->(\@arg3),-9999999999999999)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3, 4, 1, 2, 4);
    my @arg1 = (-1, -2, -3);
    my @arg2 = (-1, -2, -3, 2, -10);
    my @arg3 = (-9999999999999999);
    my @arg4 = (0, 10, 20, 1000000);
    if(Compare($candidate->(\@arg4),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3, 4, 1, 2, 4);
    my @arg1 = (-1, -2, -3);
    my @arg2 = (-1, -2, -3, 2, -10);
    my @arg3 = (-9999999999999999);
    my @arg4 = (0, 10, 20, 1000000);
    my @arg5 = (-1, -2, -3, 10, -5);
    if(Compare($candidate->(\@arg5),-6)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3, 4, 1, 2, 4);
    my @arg1 = (-1, -2, -3);
    my @arg2 = (-1, -2, -3, 2, -10);
    my @arg3 = (-9999999999999999);
    my @arg4 = (0, 10, 20, 1000000);
    my @arg5 = (-1, -2, -3, 10, -5);
    my @arg6 = (100, -1, -2, -3, 10, -5);
    if(Compare($candidate->(\@arg6),-6)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3, 4, 1, 2, 4);
    my @arg1 = (-1, -2, -3);
    my @arg2 = (-1, -2, -3, 2, -10);
    my @arg3 = (-9999999999999999);
    my @arg4 = (0, 10, 20, 1000000);
    my @arg5 = (-1, -2, -3, 10, -5);
    my @arg6 = (100, -1, -2, -3, 10, -5);
    my @arg7 = (10, 11, 13, 8, 3, 4);
    if(Compare($candidate->(\@arg7),3)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3, 4, 1, 2, 4);
    my @arg1 = (-1, -2, -3);
    my @arg2 = (-1, -2, -3, 2, -10);
    my @arg3 = (-9999999999999999);
    my @arg4 = (0, 10, 20, 1000000);
    my @arg5 = (-1, -2, -3, 10, -5);
    my @arg6 = (100, -1, -2, -3, 10, -5);
    my @arg7 = (10, 11, 13, 8, 3, 4);
    my @arg8 = (100, -33, 32, -1, 0, -2);
    if(Compare($candidate->(\@arg8),-33)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3, 4, 1, 2, 4);
    my @arg1 = (-1, -2, -3);
    my @arg2 = (-1, -2, -3, 2, -10);
    my @arg3 = (-9999999999999999);
    my @arg4 = (0, 10, 20, 1000000);
    my @arg5 = (-1, -2, -3, 10, -5);
    my @arg6 = (100, -1, -2, -3, 10, -5);
    my @arg7 = (10, 11, 13, 8, 3, 4);
    my @arg8 = (100, -33, 32, -1, 0, -2);
    my @arg9 = (-10);
    if(Compare($candidate->(\@arg9),-10)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3, 4, 1, 2, 4);
    my @arg1 = (-1, -2, -3);
    my @arg2 = (-1, -2, -3, 2, -10);
    my @arg3 = (-9999999999999999);
    my @arg4 = (0, 10, 20, 1000000);
    my @arg5 = (-1, -2, -3, 10, -5);
    my @arg6 = (100, -1, -2, -3, 10, -5);
    my @arg7 = (10, 11, 13, 8, 3, 4);
    my @arg8 = (100, -33, 32, -1, 0, -2);
    my @arg9 = (-10);
    my @arg10 = (7);
    if(Compare($candidate->(\@arg10),7)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (2, 3, 4, 1, 2, 4);
    my @arg1 = (-1, -2, -3);
    my @arg2 = (-1, -2, -3, 2, -10);
    my @arg3 = (-9999999999999999);
    my @arg4 = (0, 10, 20, 1000000);
    my @arg5 = (-1, -2, -3, 10, -5);
    my @arg6 = (100, -1, -2, -3, 10, -5);
    my @arg7 = (10, 11, 13, 8, 3, 4);
    my @arg8 = (100, -33, 32, -1, 0, -2);
    my @arg9 = (-10);
    my @arg10 = (7);
    my @arg11 = (1, -1);
    if(Compare($candidate->(\@arg11),-1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
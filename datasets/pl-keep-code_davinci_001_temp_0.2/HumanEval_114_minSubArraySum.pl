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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&minSubArraySum;
        if(eq_deeply($candidate->([2, 3, 4, 1, 2, 4]),1)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-1, -2, -3]),-6)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-1, -2, -3, 2, -10]),-14)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-9999999999999999]),-9999999999999999)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([0, 10, 20, 1000000]),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-1, -2, -3, 10, -5]),-6)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([100, -1, -2, -3, 10, -5]),-6)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([10, 11, 13, 8, 3, 4]),3)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([100, -33, 32, -1, 0, -2]),-33)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([-10]),-10)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([7]),7)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1, -1]),-1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
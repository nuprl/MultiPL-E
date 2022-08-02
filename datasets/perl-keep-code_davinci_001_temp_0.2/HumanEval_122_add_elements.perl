# Given a non-empty array of integers arr and an integer k, return
# the sum of the elements with at most two digits from the first k elements of arr.
# Example:
# Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
# Output: 24 # sum of 21 + 3
# Constraints:
# 1. 1 <= len(arr) <= 100
# 2. 1 <= k <= len(arr)
sub add_elements {
    my($arr, $k) = @_;
    my $sum = 0;
    for my $i (0..$k-1) {
        $sum += $arr->[$i];
    }
    return $sum;
}

use Test::Deep;


sub testhumaneval {
    my $candidate = \&add_elements;
        if(eq_deeply($candidate->([1, -2, -3, 41, 57, 76, 87, 88, 99], 3),-4)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([111, 121, 3, 4000, 5, 6], 2),0)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([11, 21, 3, 90, 5, 6, 7, 8, 9], 4),125)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([111, 21, 3, 4000, 5, 6, 7, 8, 9], 4),24)) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([1], 1),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
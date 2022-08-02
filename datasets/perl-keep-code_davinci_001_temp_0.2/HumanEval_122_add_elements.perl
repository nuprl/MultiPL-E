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

use Data::Compare;


sub testhumaneval {
    my $candidate = \&add_elements;
    my @arg0 = (1, -2, -3, 41, 57, 76, 87, 88, 99);
    if(Compare($candidate->(\@arg0, 3),-4)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, -2, -3, 41, 57, 76, 87, 88, 99);
    my @arg1 = (111, 121, 3, 4000, 5, 6);
    if(Compare($candidate->(\@arg1, 2),0)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, -2, -3, 41, 57, 76, 87, 88, 99);
    my @arg1 = (111, 121, 3, 4000, 5, 6);
    my @arg2 = (11, 21, 3, 90, 5, 6, 7, 8, 9);
    if(Compare($candidate->(\@arg2, 4),125)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, -2, -3, 41, 57, 76, 87, 88, 99);
    my @arg1 = (111, 121, 3, 4000, 5, 6);
    my @arg2 = (11, 21, 3, 90, 5, 6, 7, 8, 9);
    my @arg3 = (111, 21, 3, 4000, 5, 6, 7, 8, 9);
    if(Compare($candidate->(\@arg3, 4),24)) {
        print "ok!" }else{
        exit 1;
        }
    my @arg0 = (1, -2, -3, 41, 57, 76, 87, 88, 99);
    my @arg1 = (111, 121, 3, 4000, 5, 6);
    my @arg2 = (11, 21, 3, 90, 5, 6, 7, 8, 9);
    my @arg3 = (111, 21, 3, 4000, 5, 6, 7, 8, 9);
    my @arg4 = (1);
    if(Compare($candidate->(\@arg4, 1),1)) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
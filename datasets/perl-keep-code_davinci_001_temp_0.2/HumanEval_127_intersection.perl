# You are given two intervals,
# where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
# The given intervals are closed which means that the interval (start, end)
# includes both start and end.
# For each given interval, it is assumed that its start is less or equal its end.
# Your task is to determine whether the length of intersection of these two 
# intervals is a prime number.
# Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
# which its length is 1, which not a prime number.
# If the length of the intersection is a prime number, return "YES",
# otherwise, return "NO".
# If the two intervals don't intersect, return "NO".
# [input/output] samples:
# intersection((1, 2), (2, 3)) ==> "NO"
# intersection((-1, 1), (0, 4)) ==> "NO"
# intersection((-3, -1), (-5, 5)) ==> "YES"
sub intersection {
    my($interval1, $interval2) = @_;
    my $intersection = [sort {$a <=> $b} @$interval1, @$interval2];
    my $length = $intersection->[1] - $intersection->[0];
    my $is_prime = is_prime($length);
    return $is_prime ? "YES" : "NO";
}

use Data::Compare;


sub testhumaneval {
    my $candidate = \&intersection;
        if(Compare($candidate->((1, 2), (2, 3)),"NO")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->((-1, 1), (0, 4)),"NO")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->((-3, -1), (-5, 5)),"YES")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->((-2, 2), (-4, 0)),"YES")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->((-11, 2), (-1, -1)),"NO")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->((1, 2), (3, 5)),"NO")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->((1, 2), (1, 2)),"NO")) {
        print "ok!" }else{
        exit 1;
        }
        if(Compare($candidate->((-2, -2), (-3, -2)),"NO")) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();
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

use Test::Deep;


sub testhumaneval {
    my $candidate = \&sort_array;
        if(eq_deeply($candidate->([]),[])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([5]),[5])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([2, 4, 3, 0, 1, 5]),[0, 1, 2, 3, 4, 5])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([2, 4, 3, 0, 1, 5, 6]),[6, 5, 4, 3, 2, 1, 0])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([2, 1]),[1, 2])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([15, 42, 87, 32, 11, 0]),[0, 11, 15, 32, 42, 87])) {
        print "ok!" }else{
        exit 1;
        }
        if(eq_deeply($candidate->([21, 14, 23, 11]),[23, 21, 14, 11])) {
        print "ok!" }else{
        exit 1;
        }
}

testhumaneval();